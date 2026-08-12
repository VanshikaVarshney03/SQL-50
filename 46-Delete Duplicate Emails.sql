DELETE A
FROM Person A
JOIN Person B
  ON A.id > B.id
 AND A.email = B.email;