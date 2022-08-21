-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Option" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "addCost" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "productId" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletedAt" DATETIME,
    CONSTRAINT "Option_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Option" ("addCost", "amount", "id", "productId") SELECT "addCost", "amount", "id", "productId" FROM "Option";
DROP TABLE "Option";
ALTER TABLE "new_Option" RENAME TO "Option";
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
    "brandType" TEXT,
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
INSERT INTO "new_Product" ("address", "addressDetail", "amount", "brandName", "brandType", "cancelReason", "changeDeliveryFee", "cost", "courier", "description", "discount", "discountEndDate", "discountStartDate", "id", "isKC", "isShowDetail", "isTeenager", "kcInfo", "madeStartDate", "modelName", "name", "optionName", "optionValues", "origin", "referenceDate", "refundDeliveryFee", "remark", "tel", "thumbnailMain", "thumbnailSub", "validEndDate") SELECT "address", "addressDetail", "amount", "brandName", "brandType", "cancelReason", "changeDeliveryFee", "cost", "courier", "description", "discount", "discountEndDate", "discountStartDate", "id", "isKC", "isShowDetail", "isTeenager", "kcInfo", "madeStartDate", "modelName", "name", "optionName", "optionValues", "origin", "referenceDate", "refundDeliveryFee", "remark", "tel", "thumbnailMain", "thumbnailSub", "validEndDate" FROM "Product";
DROP TABLE "Product";
ALTER TABLE "new_Product" RENAME TO "Product";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
