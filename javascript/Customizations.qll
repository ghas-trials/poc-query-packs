private module donotclash {
  // TODO: Those includes are quite agressive. We might want to
  // make it customizable which of those are applied
  import javascript
  import semmle.javascript.heuristics.AdditionalSources
  import semmle.javascript.heuristics.AdditionalSinks
  import semmle.javascript.heuristics.AdditionalTaintSteps
  import semmle.javascript.heuristics.AdditionalFrameworks
  import semmle.javascript.heuristics.AdditionalPromises
  import semmle.javascript.heuristics.AdditionalRouteHandlers

  // treat data returned from backend requests as tainted
  class BackendServerResponse extends HeuristicSource, RemoteFlowSource {
    BackendServerResponse() {
      exists(ClientRequest r |
        this = r.getAResponseDataNode() and

        exists(string url, string protocolPattern |
          r.getUrl().mayHaveStringValue(url) and
          protocolPattern = "(?[a-z+]{3,10}:)" and
          not url.regexpMatch(protocolPattern + "?//.*") and
          not url.prefix(2) = ["{{", "{%"] // looks like templating
        )
      )
    }

    override string getSourceType() { result = "a response from the backend" }
  }
}
