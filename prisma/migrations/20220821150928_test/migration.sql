-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Option" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "addCost" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "authorId" INTEGER,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" DATETIME,
    CONSTRAINT "Option_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "Product" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Option" ("addCost", "amount", "createdAt", "deletedAt", "id", "updatedAt") SELECT "addCost", "amount", "createdAt", "deletedAt", "id", "updatedAt" FROM "Option";
DROP TABLE "Option";
ALTER TABLE "new_Option" RENAME TO "Option";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
