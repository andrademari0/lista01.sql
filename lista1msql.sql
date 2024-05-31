INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, ISBN, editora, num_paginas, idioma)
VALUES 
('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, ISBN, editora, num_paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, ISBN, editora, num_paginas, idioma)
VALUES ('História Fictícia', 'Autor Desconhecido', 2016, TRUE, 'História', '010-1010101010', 'Editora Fictícia', 250, 'Português');

UPDATE Livros
SET disponivel = FALSE
WHERE ano_publicacao <2000;

UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE Livros
SET idioma = 'inglês'
WHERE editora = 'Penguin Books';

UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE ISBN = '978-0439708180';

DELETE FROM Livros
WHERE categoria = 'Terror';

DELETE FROM Livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM Livros
WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM Livros
WHERE editora = 'Penguin Books';

SELECT *
FROM Livros
WHERE num_paginas > 500;

SELECT categoria, COUNT(*) AS total
FROM Livros
GROUP BY categoria;

SELECT *
FROM Livros
LIMIT 5;

SELECT SUM(num_paginas) AS total_paginas, COUNT(*) AS total_livros
FROM Livros
WHERE categoria = 'Drama';

SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM Livros
WHERE disponivel = TRUE;

SELECT MAX(ano_publicacao) AS livro_mais_recente, MIN(ano_publicacao) AS livro_mais_antigo
FROM Livros;

SELECT *
FROM Livros
ORDER BY ano_publicacao DESC;


(SELECT titulo FROM Livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM Livros WHERE idioma = 'Português');

SELECT *
FROM Livros
WHERE autor = 'George Orwell';