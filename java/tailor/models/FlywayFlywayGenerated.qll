import java
private import semmle.code.java.dataflow.ExternalFlow

private class FlywayFlywaySinkModelCustom extends SinkModelCsv {
  override predicate row(string row) {
    row = [
      "org.flywaydb.commandline.logging.file;FileLogCreator;true;FileLogCreator;(CommandLineArguments);;Argument[-1];create-file;generated",
      "org.flywaydb.core.internal.database.base;SchemaObject;true;drop;();;Argument[-1];sql;generated",
      "org.flywaydb.core.internal.database.base;Table;true;lock;();;Argument[-1];sql;generated",
      "org.flywaydb.core.internal.database.base;Table;true;unlock;();;Argument[-1];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;execute;(String,Object[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;executeStatement;(String);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;query;(String,RowMapper,Object[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForBoolean;(String,String[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForInt;(String,String[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForList;(String,Object[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForLong;(String,String[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForString;(String,String[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;queryForStringList;(String,String[]);;Argument[0];sql;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;update;(String,Object[]);;Argument[0];sql;generated"
    ]
  }
}

// No SourceModel found

private class FlywayFlywaySummaryModelCustom extends SummaryModelCsv {
  override predicate row(string row) {
    row = [
      "org.flywaydb.commandline.command.version;VersionResult;true;VersionResult;(String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.commandline.command.version;VersionResult;true;VersionResult;(String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.community.database.ignite.thin;IgniteThinTable;true;IgniteThinTable;(JdbcTemplate,IgniteThinDatabase,IgniteThinSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.community.database.ignite.thin;IgniteThinTable;true;IgniteThinTable;(JdbcTemplate,IgniteThinDatabase,IgniteThinSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.community.database.ignite.thin;IgniteThinTable;true;IgniteThinTable;(JdbcTemplate,IgniteThinDatabase,IgniteThinSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.community.database.ignite.thin;IgniteThinTable;true;IgniteThinTable;(JdbcTemplate,IgniteThinDatabase,IgniteThinSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.community.database.yugabytedb;YugabyteDBTable;true;YugabyteDBTable;(JdbcTemplate,YugabyteDBDatabase,YugabyteDBSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.community.database.yugabytedb;YugabyteDBTable;true;YugabyteDBTable;(JdbcTemplate,YugabyteDBDatabase,YugabyteDBSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.community.database.yugabytedb;YugabyteDBTable;true;YugabyteDBTable;(JdbcTemplate,YugabyteDBDatabase,YugabyteDBSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.community.database.yugabytedb;YugabyteDBTable;true;YugabyteDBTable;(JdbcTemplate,YugabyteDBDatabase,YugabyteDBSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.api.migration;JavaMigration;true;getDescription;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api.migration;JavaMigration;true;getVersion;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;BaselineResult;true;BaselineResult;(String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;BaselineResult;true;BaselineResult;(String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;CleanResult;true;CleanResult;(String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;CleanResult;true;CleanResult;(String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createBaselineResult;(String);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createCleanResult;(String);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createMigrateResult;(String,Configuration);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createRepairResult;(String);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createUndoResult;(String,Configuration);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createValidateResult;(String,ErrorDetails,int,List,List);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createValidateResult;(String,ErrorDetails,int,List,List);;Argument[1];ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createValidateResult;(String,ErrorDetails,int,List,List);;Argument[3].Element;ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;CommandResultFactory;true;createValidateResult;(String,ErrorDetails,int,List,List);;Argument[4].Element;ReturnValue;taint;generated",
      "org.flywaydb.core.api.output;InfoResult;true;InfoResult;(String,String,String,String,List,boolean);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;InfoResult;true;InfoResult;(String,String,String,String,List,boolean);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;InfoResult;true;InfoResult;(String,String,String,String,List,boolean);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;InfoResult;true;InfoResult;(String,String,String,String,List,boolean);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;InfoResult;true;InfoResult;(String,String,String,String,List,boolean);;Argument[4].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;MigrateErrorResult;true;MigrateErrorResult;(MigrateResult,Exception);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;MigrateResult;true;MigrateResult;(String,String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;MigrateResult;true;MigrateResult;(String,String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;MigrateResult;true;MigrateResult;(String,String,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;OperationResultBase;true;addWarning;(String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;RepairResult;true;RepairResult;(String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;RepairResult;true;RepairResult;(String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;UndoResult;true;UndoResult;(String,String,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;UndoResult;true;UndoResult;(String,String,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;UndoResult;true;UndoResult;(String,String,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;ValidateResult;true;ValidateResult;(String,String,ErrorDetails,boolean,int,List,List);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;ValidateResult;true;ValidateResult;(String,String,ErrorDetails,boolean,int,List,List);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;ValidateResult;true;ValidateResult;(String,String,ErrorDetails,boolean,int,List,List);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;ValidateResult;true;ValidateResult;(String,String,ErrorDetails,boolean,int,List,List);;Argument[5].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.api.output;ValidateResult;true;ValidateResult;(String,String,ErrorDetails,boolean,int,List,List);;Argument[6].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.api.resource;LoadableResource;true;read;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationInfoService;true;all;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationInfoService;true;applied;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationInfoService;true;current;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationInfoService;true;pending;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationVersion;false;getVersion;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.api;MigrationVersion;false;toString;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.callback;CallbackExecutor;true;setMigrationInfo;(MigrationInfo);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.callback;DefaultCallbackExecutor;true;DefaultCallbackExecutor;(Configuration,Database,Schema,Collection);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.callback;DefaultCallbackExecutor;true;DefaultCallbackExecutor;(Configuration,Database,Schema,Collection);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.callback;DefaultCallbackExecutor;true;DefaultCallbackExecutor;(Configuration,Database,Schema,Collection);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.callback;DefaultCallbackExecutor;true;DefaultCallbackExecutor;(Configuration,Database,Schema,Collection);;Argument[3].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Connection;true;getJdbcConnection;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.base;Connection;true;getJdbcTemplate;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.base;Function;true;Function;(JdbcTemplate,Database,Schema,String,String[]);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Function;true;Function;(JdbcTemplate,Database,Schema,String,String[]);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Function;true;Function;(JdbcTemplate,Database,Schema,String,String[]);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Function;true;Function;(JdbcTemplate,Database,Schema,String,String[]);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Function;true;Function;(JdbcTemplate,Database,Schema,String,String[]);;Argument[4].ArrayElement;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;SchemaObject;true;getDatabase;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.base;SchemaObject;true;getName;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.base;SchemaObject;true;getSchema;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.base;Table;true;Table;(JdbcTemplate,Database,Schema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Table;true;Table;(JdbcTemplate,Database,Schema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Table;true;Table;(JdbcTemplate,Database,Schema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Table;true;Table;(JdbcTemplate,Database,Schema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Type;true;Type;(JdbcTemplate,Database,Schema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Type;true;Type;(JdbcTemplate,Database,Schema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Type;true;Type;(JdbcTemplate,Database,Schema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.base;Type;true;Type;(JdbcTemplate,Database,Schema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.derby;DerbyTable;true;DerbyTable;(JdbcTemplate,DerbyDatabase,DerbySchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.derby;DerbyTable;true;DerbyTable;(JdbcTemplate,DerbyDatabase,DerbySchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.derby;DerbyTable;true;DerbyTable;(JdbcTemplate,DerbyDatabase,DerbySchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.derby;DerbyTable;true;DerbyTable;(JdbcTemplate,DerbyDatabase,DerbySchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.h2;H2Table;true;H2Table;(JdbcTemplate,H2Database,H2Schema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.h2;H2Table;true;H2Table;(JdbcTemplate,H2Database,H2Schema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.h2;H2Table;true;H2Table;(JdbcTemplate,H2Database,H2Schema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.h2;H2Table;true;H2Table;(JdbcTemplate,H2Database,H2Schema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.informix;InformixTable;true;toString;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.database.oracle;OracleTable;true;OracleTable;(JdbcTemplate,OracleDatabase,OracleSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.oracle;OracleTable;true;OracleTable;(JdbcTemplate,OracleDatabase,OracleSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.oracle;OracleTable;true;OracleTable;(JdbcTemplate,OracleDatabase,OracleSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.oracle;OracleTable;true;OracleTable;(JdbcTemplate,OracleDatabase,OracleSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.postgresql;PostgreSQLCopyParsedStatement;true;PostgreSQLCopyParsedStatement;(int,int,int,String,String);;Argument[4];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.postgresql;PostgreSQLType;true;PostgreSQLType;(JdbcTemplate,PostgreSQLDatabase,PostgreSQLSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.postgresql;PostgreSQLType;true;PostgreSQLType;(JdbcTemplate,PostgreSQLDatabase,PostgreSQLSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.postgresql;PostgreSQLType;true;PostgreSQLType;(JdbcTemplate,PostgreSQLDatabase,PostgreSQLSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.postgresql;PostgreSQLType;true;PostgreSQLType;(JdbcTemplate,PostgreSQLDatabase,PostgreSQLSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.redshift;RedshiftType;true;RedshiftType;(JdbcTemplate,RedshiftDatabase,RedshiftSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.redshift;RedshiftType;true;RedshiftType;(JdbcTemplate,RedshiftDatabase,RedshiftSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.redshift;RedshiftType;true;RedshiftType;(JdbcTemplate,RedshiftDatabase,RedshiftSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.redshift;RedshiftType;true;RedshiftType;(JdbcTemplate,RedshiftDatabase,RedshiftSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.database.sybasease;SybaseASETable;true;toString;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoImpl;true;getAppliedMigration;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoImpl;true;getResolvedMigration;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[4];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[6].ArrayElement;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;MigrationInfoServiceImpl;(CompositeMigrationResolver,SchemaHistory,Database,Configuration,MigrationVersion,boolean,ValidatePattern[],MigrationPattern[]);;Argument[7].ArrayElement;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;failed;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;future;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;outOfOrder;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.info;MigrationInfoServiceImpl;true;resolved;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;JdbcTemplate;(Connection);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;JdbcTemplate;(Connection,DatabaseType);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.jdbc;JdbcTemplate;true;getConnection;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.license;FlywayTeamsUpgradeMessage;true;generate;(String,String);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.license;FlywayTeamsUpgradeMessage;true;generate;(String,String);;Argument[1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.logging.buffered;BufferedLog$BufferedLogMessage;true;BufferedLogMessage;(String,Level);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.logging.buffered;BufferedLog$BufferedLogMessage;true;BufferedLogMessage;(String,Level,Exception);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.logging.buffered;BufferedLog$BufferedLogMessage;true;BufferedLogMessage;(String,Level,Exception);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;ParserContext;(Delimiter);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;getBlockInitiator;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;getDelimiter;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;getLastClosedBlockInitiator;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;getStatementType;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;increaseBlockDepth;(String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;setDelimiter;(Delimiter);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;ParserContext;true;setStatementType;(StatementType);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;PlaceholderReplacingReader;true;PlaceholderReplacingReader;(String,String,Map,Reader);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;PlaceholderReplacingReader;true;PlaceholderReplacingReader;(String,String,Map,Reader);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;PlaceholderReplacingReader;true;PlaceholderReplacingReader;(String,String,Map,Reader);;Argument[2].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;Recorder;true;record;(String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.parser;Recorder;true;stop;();;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.resolver.java;FixedJavaMigrationResolver;true;FixedJavaMigrationResolver;(JavaMigration[]);;Argument[0].ArrayElement;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resolver;CompositeMigrationResolver;true;CompositeMigrationResolver;(ResourceProvider,ClassProvider,Configuration,SqlScriptExecutorFactory,SqlScriptFactory,ParsingContext,StatementInterceptor,MigrationResolver[]);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resolver;CompositeMigrationResolver;true;CompositeMigrationResolver;(ResourceProvider,ClassProvider,Configuration,SqlScriptExecutorFactory,SqlScriptFactory,ParsingContext,StatementInterceptor,MigrationResolver[]);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resolver;CompositeMigrationResolver;true;CompositeMigrationResolver;(ResourceProvider,ClassProvider,Configuration,SqlScriptExecutorFactory,SqlScriptFactory,ParsingContext,StatementInterceptor,MigrationResolver[]);;Argument[4];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resolver;CompositeMigrationResolver;true;CompositeMigrationResolver;(ResourceProvider,ClassProvider,Configuration,SqlScriptExecutorFactory,SqlScriptFactory,ParsingContext,StatementInterceptor,MigrationResolver[]);;Argument[6];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resolver;CompositeMigrationResolver;true;resolveMigrations;(Configuration);;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.resource;ResourceNameParser;true;ResourceNameParser;(Configuration);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.resource;StringResource;true;StringResource;(String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.scanner.classpath;UrlResolver;true;toStandardJavaUrl;(URL);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.scanner;ClasspathClassScanner;true;ClasspathClassScanner;(ClassLoader);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.scanner;LocationScannerCache;true;get;(String);;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.scanner;LocationScannerCache;true;put;(String,ClassPathLocationScanner);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.scanner;LocationScannerCache;true;put;(String,ClassPathLocationScanner);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.scanner;ResourceNameCache;true;get;(ClassPathLocationScanner,URL);;Argument[-1];ReturnValue;taint;generated",
      "org.flywaydb.core.internal.scanner;ResourceNameCache;true;put;(ClassPathLocationScanner,Map);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.scanner;ResourceNameCache;true;put;(ClassPathLocationScanner,Map);;Argument[1].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.util;AsciiTable;true;AsciiTable;(List,List,boolean,String,String);;Argument[0].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.util;AsciiTable;true;AsciiTable;(List,List,boolean,String,String);;Argument[1].Element;Argument[-1];taint;generated",
      "org.flywaydb.core.internal.util;AsciiTable;true;AsciiTable;(List,List,boolean,String,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.util;AsciiTable;true;AsciiTable;(List,List,boolean,String,String);;Argument[4];Argument[-1];taint;generated",
      "org.flywaydb.core.internal.util;BomFilter;true;FilterBomFromString;(String);;Argument[0];ReturnValue;taint;generated",
      "org.flywaydb.database.bigquery;BigQueryJdbcTemplate;true;BigQueryJdbcTemplate;(Connection);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.database.firebird;FirebirdTable;true;FirebirdTable;(JdbcTemplate,FirebirdDatabase,FirebirdSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.database.firebird;FirebirdTable;true;FirebirdTable;(JdbcTemplate,FirebirdDatabase,FirebirdSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.database.firebird;FirebirdTable;true;FirebirdTable;(JdbcTemplate,FirebirdDatabase,FirebirdSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.database.firebird;FirebirdTable;true;FirebirdTable;(JdbcTemplate,FirebirdDatabase,FirebirdSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.database.spanner;SpannerJdbcTemplate;true;SpannerJdbcTemplate;(Connection);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.database.spanner;SpannerTable;true;SpannerTable;(JdbcTemplate,SpannerDatabase,SpannerSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.database.spanner;SpannerTable;true;SpannerTable;(JdbcTemplate,SpannerDatabase,SpannerSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.database.spanner;SpannerTable;true;SpannerTable;(JdbcTemplate,SpannerDatabase,SpannerSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.database.spanner;SpannerTable;true;SpannerTable;(JdbcTemplate,SpannerDatabase,SpannerSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.database.sqlserver;SQLServerTable;true;SQLServerTable;(JdbcTemplate,SQLServerDatabase,String,SQLServerSchema,String);;Argument[0];Argument[-1];taint;generated",
      "org.flywaydb.database.sqlserver;SQLServerTable;true;SQLServerTable;(JdbcTemplate,SQLServerDatabase,String,SQLServerSchema,String);;Argument[1];Argument[-1];taint;generated",
      "org.flywaydb.database.sqlserver;SQLServerTable;true;SQLServerTable;(JdbcTemplate,SQLServerDatabase,String,SQLServerSchema,String);;Argument[2];Argument[-1];taint;generated",
      "org.flywaydb.database.sqlserver;SQLServerTable;true;SQLServerTable;(JdbcTemplate,SQLServerDatabase,String,SQLServerSchema,String);;Argument[3];Argument[-1];taint;generated",
      "org.flywaydb.database.sqlserver;SQLServerTable;true;SQLServerTable;(JdbcTemplate,SQLServerDatabase,String,SQLServerSchema,String);;Argument[4];Argument[-1];taint;generated",
      "org.flywaydb.gradle.task;AbstractFlywayTask;true;getPluginConfiguration;(Map,Map);;Argument[0].Element;ReturnValue;taint;generated",
      "org.flywaydb.gradle.task;AbstractFlywayTask;true;getPluginConfiguration;(Map,Map);;Argument[1].Element;ReturnValue;taint;generated"
    ]
  }
}
