jadeVersionNumber "20.0.02";
schemaDefinition
DynamicJsonParser subschemaOf RootSchema partialDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
typeHeaders
	JsonParser subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestSubId = 2, highestOrdinal = 9, number = 2052;
 
membershipDefinitions
 
typeDefinitions
	JsonParser completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:19:31:27.811;
	constantDefinitions
		JSON_COLON:                    String = ":" number = 1005;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:57:58.878;
		JSON_COMMA:                    String = "," number = 1006;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:16:21:15.023;
		JSON_LEFTBRACE:                String = "{" number = 1003;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:57:44.510;
		JSON_LEFTBRACKET:              String = "[" number = 1001;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:57:28.052;
		JSON_RIGHTBRACE:               String = "}" number = 1004;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:57:50.701;
		JSON_RIGHTBRACKET:             String = "]" number = 1002;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:57:36.054;
	attributeDefinitions
		debugMode:                     Boolean protected, number = 1, ordinal = 8;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:19:30:29.299;
	referenceDefinitions
		myJsonLexer:                   JsonLexer  protected, number = 3, ordinal = 3;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:39:32.214;
		myJsonObject:                  JadeDynamicObject  protected, number = 2, ordinal = 9;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:14:24.474;
 
	jadeMethodDefinitions
		create() updating, number = 1001;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:19:32:04.634;
		delete() updating, number = 1002;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:19:32:08.711;
		fromString(inputString: String): JadeDynamicObject updating, number = 1006;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:21:38.195;
		getTokenString(tokens: JsonTokens): String protected, number = 1003;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:19:39:20.629;
		handleException(
			exObj: Exception; 
			token: JsonToken): Integer protected, number = 1008;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:02:38.217;
		parse(tokens: JsonTokens io): JsonToken updating, protected, number = 1004;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:17:29.458;
		parseArray(tokens: JsonTokens io): JadeDynamicObjectArray updating, protected, number = 1007;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:17:58.203;
		parseObject(tokens: JsonTokens io): JadeDynamicObject updating, protected, number = 1005;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:17:43.474;
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
		JsonParser in "dynamicjsonparser";
	)
 
typeSources
	JsonParser (
	jadeMethodSources
create
{
create() updating;

begin
	create myJsonLexer;
	
	self.debugMode := true;
	
end;

}

delete
{
delete() updating;

begin

	delete self.myJsonLexer;
	
end;	

}

fromString
{
fromString(inputString: String): JadeDynamicObject updating;

vars
	tokens: JsonTokens;
	
begin
	tokens := myJsonLexer.lex(inputString);
	
	if debugMode then
		getTokenString(tokens);
	endif;
	
	parse(tokens);
	return self.myJsonObject;
	
end;

}

getTokenString
{
getTokenString(tokens: JsonTokens): String protected;

vars
	jsonToken: JsonToken;
	tokenString: String;
	
begin
	foreach jsonToken in tokens do
		tokenString &= jsonToken.value & Tab & Tab &  Tab & Tab & jsonToken.type.name & CrLf;
	endforeach;
	
	return tokenString;
end;

}

handleException
{
handleException(exObj: Exception; token: JsonToken): Integer protected;

constants
	EXPECTED_COMMA_AFTER_OBJECT = 61000;
	EXPECTED_END_OF_ARRAY_BRACKET = 61001;
	EXPECTED_STRING_KEY = 61002;
	EXPECTED_COLON_AFTER_KEY = 61003;
	EXPECTED_COMMA_AFTER_PAIR = 61004;
	EXPECTED_END_OF_OBJECT_BRACE = 61005;
	
begin
	if exObj.errorCode = EXPECTED_COMMA_AFTER_OBJECT then
		
		write "Expected comma after object. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	elseif exObj.errorCode = EXPECTED_END_OF_ARRAY_BRACKET then
		
		write "Expected end of array bracket. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	elseif exObj.errorCode = EXPECTED_STRING_KEY then
		
		write "Expected string key. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	elseif exObj.errorCode = EXPECTED_COLON_AFTER_KEY then
	
		write "Expected colon after key in object. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	elseif exObj.errorCode = EXPECTED_COMMA_AFTER_PAIR then
	
		write "Expected comma after pair in object. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	elseif exObj.errorCode = EXPECTED_END_OF_OBJECT_BRACE then
	
		write "Expected end of object brace. Instead got: " & token.value;
		return Ex_Abort_Action;
	
	else
		
		write "Unexpected exception";
		write "Error Code: " & exObj.errorCode.String;
		write "Error Item: " & exObj.errorItem;
		return Ex_Abort_Action;
	
	endif;
	
	
end;

}

parse
{
parse(tokens: JsonTokens io): JsonToken protected, updating;

vars
	jsonToken: JsonToken;
	
begin
	jsonToken := tokens[1];
	
	if jsonToken.value = JSON_LEFTBRACKET then
	
		tokens.removeAt(1);
		parseArray(tokens);
		
	elseif jsonToken.value = JSON_LEFTBRACE then
	
		tokens.removeAt(1);
		parseObject(tokens);
		
	else
	
		tokens.removeAt(1);
		return jsonToken;
		
	endif;
	
end;

}

parseArray
{
parseArray(tokens: JsonTokens io): JadeDynamicObjectArray protected, updating;

vars
	jsonArray: JadeDynamicObjectArray;
	jsonToken: JsonToken;
	jsonObject: JadeDynamicObject;
	exception: JsonException;
	
begin
	on JsonException do handleException(exception, jsonToken);
	
	create jsonArray transient;
	
	jsonToken := tokens[1];
	
	if jsonToken.value = JSON_RIGHTBRACKET then
	
		tokens.removeAt(1);
		return jsonArray;
		
	endif;
	
	while true do
	
		jsonToken := tokens[1];
		
		if jsonToken.value = JSON_LEFTBRACE then
			
			tokens.removeAt(1);
			jsonObject := parseObject(tokens);
			jsonArray.add(jsonObject);
		
		endif;
		
		jsonToken := tokens[1];
		
		if jsonToken.value = JSON_RIGHTBRACKET then
		
			tokens.removeAt(1);
			return jsonArray;
			
		elseif jsonToken.value <> JSON_COMMA then
		
			// Raise Exception
			// Expected comma after object in array
			create exception transient;
			exception.errorCode := 61000;
			raise exception;
			
		else
			
			tokens.removeAt(1);
		
		endif;
	
	endwhile;
	
	// Raise Exception
	// Expected end of array bracket
	create exception transient;
	exception.errorCode := 61001;
	raise exception;
	
end;

}

parseObject
{
parseObject(tokens: JsonTokens io): JadeDynamicObject protected, updating;

vars
	jsonObject: JadeDynamicObject;
	jsonToken: JsonToken;
	jsonKey: JsonToken;
	jsonValue: JsonToken;
	childJsonObject: JadeDynamicObject;
	childJsonObjectArray: JadeDynamicObjectArray;
	exception: JsonException;
	
begin
	on JsonException do handleException(exception, jsonToken);

	create jsonObject transient;

	jsonToken := tokens[1];
	
	if jsonToken.value = JSON_RIGHTBRACE then
	
		tokens.removeAt(1);
		
		return jsonObject;
	
	endif;
	
	while true do
	
		jsonKey := tokens[1];
		
		if jsonKey.type = String then
			tokens.removeAt(1);
		else
		
			// Raise Exception
			// Expected String key
			create exception transient;
			exception.errorCode := 61002;
			raise exception;
			
		endif;
		
		jsonToken := tokens[1];
		
		if jsonToken.value <> JSON_COLON then
			// Raise Exception
			// Expected colon after key in object
			create exception transient;
			exception.errorCode := 61003;
			raise exception;
			
		endif;
		
		tokens.removeAt(1);
		
		jsonToken := tokens[1];
		
		if jsonToken.type.name = "JadeDynamicObject" then
		
			tokens.removeAt(1);
			childJsonObject := parseObject(tokens);
			jsonObject.addProperty(jsonKey.value, JadeDynamicObject);
			jsonObject.setPropertyValue(jsonKey.value, childJsonObject);
			
		elseif jsonToken.type.name = "JadeDynamicObjectArray" then
		
			tokens.removeAt(1);
			childJsonObjectArray := parseArray(tokens);
			jsonObject.addProperty(jsonKey.value, JadeDynamicObjectArray);
			jsonObject.setPropertyValue(jsonKey.value, childJsonObjectArray);
			
		else
			jsonValue := parse(tokens);
		
			jsonObject.addProperty(jsonKey.value, jsonValue.type);
			
			// Type casting
			if jsonValue.type = Integer then
				jsonObject.setPropertyValue(jsonKey.value, jsonValue.value.Integer);
			elseif jsonValue.type = Real then
				jsonObject.setPropertyValue(jsonKey.value, jsonValue.value.Real);
			elseif jsonValue.type = Boolean then
				jsonObject.setPropertyValue(jsonKey.value, jsonValue.value.Boolean);
			else
				jsonObject.setPropertyValue(jsonKey.value, jsonValue.value);
			endif;
			
		endif;
		
		jsonToken := tokens[1];
		
		if jsonToken.value = JSON_RIGHTBRACE then
			
			tokens.removeAt(1);
			self.myJsonObject := jsonObject;
			return jsonObject;
		
		elseif jsonToken.value <> JSON_COMMA then
		
			// Raise Exception
			// Expected comma after pair in object
			create exception transient;
			exception.errorCode := 61004;
			raise exception;
			
		endif;
		tokens.removeAt(1);
		
	endwhile;
	
	// Raise Exception
	// Expected end of object brace
	create exception transient;
	exception.errorCode := 61005;
	raise exception;
		
end;

}

	)
