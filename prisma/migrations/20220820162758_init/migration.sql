-- CreateTable
CREATE TABLE "Product" (
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
    "remark" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "OptionList" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "addCost" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "productId" INTEGER NOT NULL,
    CONSTRAINT "OptionList_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
