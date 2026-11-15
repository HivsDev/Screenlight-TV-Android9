.class public Lcom/shenma/tvlauncher/db/DatabaseOperator;
.super Ljava/lang/Object;
.source "DatabaseOperator.java"


# static fields
.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_CREATED:Ljava/lang/String; = "created"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

.field private sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->open()V

    .line 30
    return-void
.end method

.method private queryExistByName(Ljava/lang/String;)Z
    .locals 11
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 70
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "DatabaseHelper.TABLE_APPLOVES"

    const-string v5, "packagename=?"

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 73
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    return v10

    .line 78
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_0
    return v1
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 54
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->queryExistByName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "apploves"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 46
    return-void
.end method

.method public deleteApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "DatabaseHelper.TABLE_APPLOVES"

    const-string v3, "packagename=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    return-void
.end method

.method public open()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 100
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "DatabaseHelper.TABLE_APPLOVES"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 101
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "packagename"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    return-object v0
.end method
