%sort
[m,n] = size(raw);
stateArray = cell(m,10);
a = 1;
for i = 1:201876
    if isequal(raw{i,5}, 'FL');
        for e = 1:10
            stateArrayFL{a,e}=raw{i,e};
        end
        a = a + 1;
    end
end
