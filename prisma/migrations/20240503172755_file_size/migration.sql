-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_AppInformation" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "fileName" TEXT NOT NULL,
    "uploadedFileName" TEXT NOT NULL,
    "path" TEXT NOT NULL,
    "platform" TEXT NOT NULL,
    "fileSize" TEXT NOT NULL DEFAULT '0',
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_AppInformation" ("fileName", "id", "path", "platform", "uploadedFileName") SELECT "fileName", "id", "path", "platform", "uploadedFileName" FROM "AppInformation";
DROP TABLE "AppInformation";
ALTER TABLE "new_AppInformation" RENAME TO "AppInformation";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
