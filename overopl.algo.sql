overopl.algo
LGORITHM FindSum
VAR
    
   htab : HASH_TABLE<INTEGER,INTEGER>;
   set1:ARRAY_OF INTEGER[50];
   set2:ARRAY_OF INTEGER[50];
    i,count : INTEGER;
    sum:INTEGER :=0;
BEGIN
    set1 := {3, 1, 7, 9}; 
    set2 := {2, 4, 1, 9, 3};
    FOR i FROM 0 TO  set1.length-1  STEP  1 DO
        IF( htab.lookup(set1[i])=FALSE) THEN
         htab.insert(set1[i],1);
        ELSE
           count:= htab.get(set1[i]);
           count=count+1;
           htab.insert(set1[i],count);

        END_IF
    END_FOR
    FOR i FROM 0 TO  set2.length-1  STEP  1 DO
        IF( htab.lookup(set2[i])=FALSE) THEN
         htab.insert(set2[i],1);
        ELSE
           count:= htab.get(set2[i]);
           count=count+1;
           htab.insert(set2[i],count);
    END_FOR
    FOR i FROM 0 TO set1.length-1 STEP  1  DO
        IF(htab.get(set1[i])>1) THEN
            sum=sum+set1[i];
        END_IF
    END_FOR
     FOR i FROM 0 TO set2.length-1 STEP  1  DO
        IF (htab.get(set2[i])>1) THEN
            sum=sum+set2[i];
        END_IF
    END_FOR
    write ("the sum of all distinct elements is ", sum )
END