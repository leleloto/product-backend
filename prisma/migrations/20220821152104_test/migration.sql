/*
  Warnings:

  - You are about to drop the column `brandType` on the `Product` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "thumbnailMain" TEXT NOT NULL,
    "thumbnailSub" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "cost" INTEGER NOT NULL,
    "discount" INTEGER NOT NULL,
    "discountStartDate" DATETIME,
    "discountEndDate" DATETIME,
    "amount" INTEGER NOT NULL,
    "optionName" TEXT,
    "optionValues" TEXT,
    "description" TEXT,
    "modelName" TEXT NOT NULL,
    "brandName" TEXT NOT NULL,
    "isKC" BOOLEAN NOT NULL,
    "kcInfo" TEXT NOT NULL,
    "origin" TEXT NOT NULL,
    "madeStartDate" DATETIME,
    "validEndDate" DATETIME,
    "isTeenager" BOOLEAN NOT NULL,
    "isShowDetail" BOOLEAN NOT NULL,
    "courier" TEXT NOT NULL,
    "refundDeliveryFee" INTEGER NOT NULL,
    "changeDeliveryFee" INTEGER NOT NULL,
    "address" TEXT NOT NULL,
    "addressDetail" TEXT NOT NULL,
    "tel" TEXT NOT NULL,
    "referenceDate" TEXT NOT NULL,
    "cancelReason" TEXT NOT NULL,
    "remark" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" DATETIME
);
INSERT INTO "new_Product" ("address", "addressDetail", "amount", "brandName", "cancelReason", "changeDeliveryFee", "cost", "courier", "createdAt", "deletedAt", "description", "discount", "discountEndDate", "discountStartDate", "id", "isKC", "isShowDetail", "isTeenager", "kcInfo", "madeStartDate", "modelName", "name", "optionName", "optionValues", "origin", "referenceDate", "refundDeliveryFee", "remark", "tel", "thumbnailMain", "thumbnailSub", "updatedAt", "validEndDate") SELECT "address", "addressDetail", "amount", "brandName", "cancelReason", "changeDeliveryFee", "cost", "courier", "createdAt", "deletedAt", "description", "discount", "discountEndDate", "discountStartDate", "id", "isKC", "isShowDetail", "isTeenager", "kcInfo", "madeStartDate", "modelName", "name", "optionName", "optionValues", "origin", "referenceDate", "refundDeliveryFee", "remark", "tel", "thumbnailMain", "thumbnailSub", "updatedAt", "validEndDate" FROM "Product";
DROP TABLE "Product";
ALTER TABLE "new_Product" RENAME TO "Product";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
