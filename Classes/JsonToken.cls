jadeVersionNumber "20.0.02";
schemaDefinition
DynamicJsonParser subschemaOf RootSchema partialDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
typeHeaders
	JsonToken subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 3, number = 2053;
 
membershipDefinitions
 
typeDefinitions
	JsonToken completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:16:15:19.018;
	constantDefinitions
		TYPE_BOOL:                     String = "boolean" number = 1002;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:29:54.851;
		TYPE_INTEGER:                  String = "integer" number = 1003;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:30:07.608;
		TYPE_NULL:                     String = "" number = 1006;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:34:42.622;
		TYPE_REAL:                     String = "real" number = 1004;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:30:14.270;
		TYPE_STRING:                   String = "string" number = 1001;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:29:44.902;
		TYPE_SYNTAX:                   String = "syntax"
 number = 1005;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:30:26.307;
	attributeDefinitions
		value:                         String subId = 1, number = 1, ordinal = 1;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:37:27.389;
	referenceDefinitions
		type:                          Type  number = 2, ordinal = 3;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:16:15:27.075;
	)
 
inverseDefinitions
databaseDefinitions
DynamicJsonParserDb
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
	databaseFileDefinitions
		"dynamicjsonparser" number = 51;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
	defaultFileDefinition "dynamicjsonparser";
	classMapDefinitions
		JsonToken in "dynamicjsonparser";
	)
 
typeSources
