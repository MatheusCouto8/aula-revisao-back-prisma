/*
  Warnings:

  - Added the required column `releaseYear` to the `animes` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_animes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "episodes" INTEGER NOT NULL,
    "releaseYear" INTEGER NOT NULL,
    "studio" TEXT NOT NULL,
    "genres" TEXT NOT NULL,
    "rating" REAL NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_animes" ("createdAt", "description", "episodes", "genres", "id", "imageUrl", "rating", "studio", "title", "updatedAt") SELECT "createdAt", "description", "episodes", "genres", "id", "imageUrl", "rating", "studio", "title", "updatedAt" FROM "animes";
DROP TABLE "animes";
ALTER TABLE "new_animes" RENAME TO "animes";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
