function TransferBetweenListboxes

% Status: PROMOTED (Release version) 
% See documentation for copyright (owned by original authors) and warranties (none!).
% This code released as part of MClust 3.0.
% Version control M3.0.

fromLB = gcbo;
toLB = get(fromLB, 'UserData');
valueFrom = get(fromLB, 'Value');

toString = get(toLB, 'String');
fromString = get(fromLB, 'String');

if isempty(toString)
  toString = fromString(valueFrom);
else
  toString = toString;
  toString(end+1) = fromString(valueFrom);
  toString = sortcell(toString);
end
fromString(valueFrom) = [];
set(fromLB, 'String', fromString);
set(toLB, 'String', toString);

set(fromLB, 'Value', max(1, min(length(fromString), valueFrom)));