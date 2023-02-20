unit ToNoSQL;

interface

type
  StringArray = array[0..4] of String;

procedure ToNoSQLByVal(databases: StringArray);
procedure ToNoSQLByRef(var databases: StringArray);

implementation

procedure ToNoSQLByVal(databases: StringArray);
begin
  databases[1] := 'MongoDB';
  databases[2] := 'DynamoDB';
  databases[3] := 'CosmosDB';
  databases[4] := 'Firestore';
  databases[5] := 'CouchDB';
end;

procedure ToNoSQLByRef(var databases: StringArray);
begin
  databases[1] := 'MongoDB';
  databases[2] := 'DynamoDB';
  databases[3] := 'CosmosDB';
  databases[4] := 'Firestore';
  databases[5] := 'CouchDB';
end;

end.
