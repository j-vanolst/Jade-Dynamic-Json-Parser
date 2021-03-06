/* JADE COMMAND FILE NAME C:\Users\Jos\Documents\Github\Jade-Dynamic-Json-Parser\DynamicJsonParser.jcf */
jadeVersionNumber "20.0.02";
schemaDefinition
DynamicJsonParser subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.637;
libraryDefinitions
typeHeaders
	DynamicJsonParser subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2048;
	JsonException subclassOf Exception transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2056;
	GDynamicJsonParser subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2049;
	JsonLexer subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2051;
	JsonParser subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestSubId = 2, highestOrdinal = 9, number = 2052;
	JsonToken subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 3, number = 2053;
	SDynamicJsonParser subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2050;
	JsonTokens subclassOf ObjectArray transient, transientAllowed, subclassTransientAllowed, number = 2054;
 
membershipDefinitions
	JsonTokens of JsonToken ;
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	DynamicJsonParser completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
	)
	Exception completeDefinition
	(
	)
	JsonException completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:20:27:15.603;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GDynamicJsonParser completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
	)
	JsonLexer completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:03:13.586;
	attributeDefinitions
		debugMode:                     Boolean protected, number = 1, ordinal = 1;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:42:52.174;
 
	jadeMethodDefinitions
		create() updating, number = 1006;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:51:34.920;
		handleException(
			exObj: Exception; 
			character: String): Integer protected, number = 1007;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:02:28.589;
		lex(inputString: String): JsonTokens number = 1005;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:49:12.617;
		lexBool(subString: String io): String protected, number = 1003;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:01:54.143;
		lexNull(subString: String io): Boolean protected, number = 1004;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:50:58.028;
		lexNumber(subString: String io): String protected, number = 1002;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:02:03.523;
		lexString(subString: String io): String protected, number = 1001;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:26:21:02:08.788;
	)
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
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SDynamicJsonParser completeDefinition
	(
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
	)
	Collection completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	ObjectArray completeDefinition
	(
	)
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
		SDynamicJsonParser in "_environ";
		DynamicJsonParser in "_usergui";
		GDynamicJsonParser in "dynamicjsonparser";
		JsonLexer in "dynamicjsonparser";
		JsonParser in "dynamicjsonparser";
		JsonToken in "dynamicjsonparser";
		JsonTokens in "dynamicjsonparser";
		JsonException in "dynamicjsonparser";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	JsonLexer (
	jadeMethodSources
create
{
create() updating;

begin
	debugMode := false;
end;

}

handleException
{
handleException(exObj: Exception; character: String): Integer protected;

constants
	UNEXPECTED_CHARACTER = 60000;
	EXPECTED_END_OF_STRING_QUOTE = 60001;
	
begin
	if exObj.errorCode = UNEXPECTED_CHARACTER then
	
		write "Unexpected character in JSON string: " & character;
		return Ex_Abort_Action;
		
	elseif exObj.errorCode = EXPECTED_END_OF_STRING_QUOTE then
	
		write "Expected end-of-string quote";
		return Ex_Abort_Action;
		
	else
	
		write "Unexpected exception";
		write "Error Code: " & exObj.errorCode.String;
		write "Error Item: " & exObj.errorItem;
		return Ex_Abort_Action;
		
	endif;
end;

}

lex
{
lex(inputString: String): JsonTokens;

constants
	JSON_WHITESPACE = " \t\b\n\r";
	JSON_SYNTAX = ",:[]{}";
	
vars
	tokens: JsonTokens;
	token: JsonToken;
	subString: String;
	jsonString: String;
	jsonNumber: String;
	jsonBool: String;
	jsonNull: Boolean;
	exception: JsonException;
	
begin
	on JsonException do handleException(exception, subString[1]);
	
	create tokens transient;
	subString := inputString;
	
	while subString.length > 0 do
	
		if debugMode then
			//write subString;
		endif;
	
		jsonString := lexString(subString);
		if jsonString <> null then
			
			if debugMode then
				write "String Added: " & jsonString;
			endif;
			
			create token transient;
			token.value := jsonString;
			token.type := String;
			tokens.add(token);
			
		endif;
		
		jsonNumber := lexNumber(subString);
		if jsonNumber <> null then
		
			if debugMode then
				write "Number Added: " & jsonNumber;
			endif;
		
			create token transient;
			token.value := jsonNumber;
			
			if jsonNumber.Decimal.getDeclaredScaleFactor() > 0 then
				token.type := Real;
			else
				token.type := Integer;
			endif;
			
			tokens.add(token);
		endif;
		
		jsonBool := lexBool(subString);
		if jsonBool <> null then
		
			if debugMode then
				write "Boolean Added: " & jsonBool;
			endif;
			
			create token transient;
			token.value := jsonBool;
			token.type := Boolean;
			
		endif;
		
		jsonNull := lexNull(subString);
		if jsonNull then
		
			if debugMode then
				write "Null Added";
			endif;
		
			create token transient;
			token.value := "";
			token.type := String;
			tokens.add(token);
			
		endif;
		
		if JSON_WHITESPACE.pos(subString[1], 1) > 0 then
			subString := subString[2:end];
		elseif JSON_SYNTAX.pos(subString[1], 1) > 0 then
			
			if debugMode then
				write "Syntax Added: " & subString[1];
			endif;
		
			create token transient;
			token.value := subString[1];
			
			if token.value = "{" then
				token.type := JadeDynamicObject;
			elseif token.value = "[" then
				token.type := JadeDynamicObjectArray;
			else
				token.type := String;
			endif;
			
			tokens.add(token);
			if subString .length = 1 then
				subString := null;
			else
				subString := subString[2:end];
			endif;
			
		else
		
			// Raise Exception
			// Unexpected Character
			create exception transient;
			exception.errorCode := 60000;
			raise exception;
			
		endif;
	
	endwhile;
	
	return tokens;
	
end;

}

lexBool
{
lexBool(subString: String io): String protected;

constants
	TRUE_LENGTH = 4;
	FALSE_LENGTH = 4;

vars
	stringLength: Integer;
	jsonBool: String;
	
begin
	on JsonException do handleException(exception, null);
	
	stringLength := subString.length;
	
	if stringLength >= TRUE_LENGTH
	and subString[1:TRUE_LENGTH] = "true" then
	
		jsonBool := "true";
		subString := subString[TRUE_LENGTH:end];
		return jsonBool;
	
	elseif stringLength >= FALSE_LENGTH
	and subString[1:FALSE_LENGTH] = "false" then
	
		jsonBool := "false";
		subString := subString[FALSE_LENGTH:end];
		return jsonBool;
	
	endif;
	
	return null;
	
end;

}

lexNull
{
lexNull(subString: String io): Boolean protected;

constants
	NULL_LENGTH = 4;
	
vars
	stringLength: Integer;
	
begin
	on JsonException do handleException(exception, null);
	
	stringLength := subString.length;
	
	if stringLength >= NULL_LENGTH
	and subString[1:NULL_LENGTH] = "null" then
	
		subString := subString[NULL_LENGTH + 1:end];
		return true;
		
	endif;
	
	return null;
end;

}

lexNumber
{
lexNumber(subString: String io): String protected;

constants
	NUMBER_CHARACTERS = "0123456789-e.";
	
vars
	jsonNumber: String;
	currentIndex: Integer;
	remainingString: String;
	
begin
	on JsonException do handleException(exception, null);

	while currentIndex < subString.length do
	
		currentIndex += 1;
		
		if NUMBER_CHARACTERS.pos(subString[currentIndex], 1) > 0 then
			jsonNumber &= subString[currentIndex];
		else
			break;
		endif;
		
	endwhile;
	
	if jsonNumber.length = 0 then
		return null;
	endif;
	
	remainingString := subString[jsonNumber.length + 1:end];
	
	subString := remainingString;
	return jsonNumber;
	
end;

}

lexString
{
lexString(subString: String io): String protected;

constants
	JSON_QUOTE = '"';

vars
	jsonString: String;
	currentIndex: Integer;
	exception: JsonException;
	
begin
	on JsonException do handleException(exception, null);
	
	if subString[1] = JSON_QUOTE then
		subString := subString[2:end];
	else
		return null;
	endif;
	
	while currentIndex < subString.length do
	
		currentIndex += 1;
		
		if subString[currentIndex] = JSON_QUOTE then
		
			subString := subString[jsonString.length + 2:end];
			return jsonString;
			
		else
			jsonString &= subString[currentIndex];
		endif;
			
	endwhile;
	
	// Raise Exception
	// Expected end-of-string quote
	create exception transient;
	exception.errorCode := 60001;
	raise exception;
	
end;

}

	)
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
