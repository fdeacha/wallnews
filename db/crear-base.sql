-- Crear la base de datos
DROP DATABASE IF EXISTS portal_noticias;
CREATE DATABASE portal_noticias;

-- Seleccionar la base de datos
USE portal_noticias;

-- Crear la tabla noticias
CREATE TABLE noticias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    contenido TEXT NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insertar registros iniciales
INSERT INTO noticias (titulo, contenido, imagen, fecha)
VALUES 
('Cyberpunk 2077: El Renacer del Mundo Futurista', 
'Cyberpunk 2077 se ha convertido en un referente del género cyberpunk gracias a su increíble diseño de mundo y una narrativa madura. Tras varios parches, el juego ofrece una experiencia pulida, con personajes complejos y misiones memorables. La ambientación nocturna con luces neón y un entorno tecnológico oscuro nos transporta a un futuro distópico lleno de desafíos y decisiones difíciles.', 
'/uploads/noticias1.png', NOW()),

('Elden Ring: La Aventura Definitiva de Fantasía Épica', 
'Elden Ring nos lleva a un mundo de fantasía inmersivo, donde la exploración y el combate se fusionan de manera magistral. Cada rincón esconde secretos, enemigos desafiantes y un lore profundo que recompensa a los jugadores curiosos. Su mundo abierto y los épicos enfrentamientos con jefes hacen de este juego una experiencia inolvidable para los amantes de los RPGs.', 
'/uploads/noticias2.png', NOW()),

('The Witcher 3: Un Clásico Inmortal', 
'The Witcher 3 sigue siendo un ejemplo de cómo contar historias complejas en un videojuego. Cada decisión que tomas tiene consecuencias reales, haciendo que el mundo se sienta vivo y en constante cambio. Sus gráficos, banda sonora y la profundidad de su historia hacen que este juego sea una leyenda del género RPG.', 
'/uploads/noticias3.png', NOW()),

('Final Fantasy XVI: El Retorno de la Magia', 
'Final Fantasy XVI redefine la saga con un sistema de combate emocionante y una narrativa intensa. Los personajes principales enfrentan dilemas complejos, mientras luchan por salvar su mundo de fuerzas oscuras. Sus escenarios majestuosos y sus poderosas invocaciones hacen que cada batalla sea épica y visualmente espectacular.', 
'/uploads/noticias4.png', NOW()),

('Ciudad Post-Apocalíptica: El Futuro Destruido', 
'En una ciudad devastada por un colapso global, los sobrevivientes luchan por su existencia en un entorno hostil. Recursos limitados, bandas violentas y tecnología perdida definen esta experiencia inmersiva cargada de acción y decisiones estratégicas.', 
'/uploads/noticias3.png', NOW()),

('Campo de Batalla Mágico: El Despertar de los Héroes', 
'Bajo un cielo tormentoso, poderosos héroes se enfrentan en una batalla mágica sin cuartel. Espadas encantadas y hechizos devastadores definen esta lucha épica por el destino del mundo. Cada enfrentamiento es una obra maestra visual.', 
'/uploads/noticias2.png', NOW());
