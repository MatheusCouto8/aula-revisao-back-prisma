-- CreateTable
CREATE TABLE "animes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "episodes" INTEGER NOT NULL,
    "studio" TEXT NOT NULL,
    "genres" TEXT NOT NULL,
    "rating" REAL NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
