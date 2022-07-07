INSERT INTO accounts( owner, balance, currency)
VALUE ($1,$2,$3)

RETURNING *;