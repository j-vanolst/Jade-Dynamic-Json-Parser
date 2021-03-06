jadeVersionNumber "20.0.02";
schemaDefinition
DynamicJsonParser subschemaOf RootSchema partialDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "Jos" "20.0.02" 2022:06:25:15:02:46.656;
typeHeaders
	JsonLexer subclassOf Object transient, transientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2051;
 
membershipDefinitions
 
typeDefinitions
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
		JsonLexer in "dynamicjsonparser";
	)
 
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
