jadeVersionNumber "20.0.02";
schemaDefinition
DynamicJsonParser subschemaOf RootSchema partialDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
typeHeaders
	JsonTokens subclassOf ObjectArray transient, transientAllowed, subclassTransientAllowed, number = 2054;
 
membershipDefinitions
	JsonTokens of JsonToken ;
 
typeDefinitions
	JsonTokens completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:08:59.511;
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
		JsonTokens in "dynamicjsonparser";
	)
 
typeSources
