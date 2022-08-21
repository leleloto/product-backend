/*
  Warnings:

  - You are about to drop the `OptionList` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "OptionList";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Option" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "addCost" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "productId" INTEGER NOT NULL,
    CONSTRAINT "Option_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
