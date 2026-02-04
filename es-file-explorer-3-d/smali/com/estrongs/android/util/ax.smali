.class public Lcom/estrongs/android/util/ax;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/util/ax;

.field private static d:I

.field private static e:[Ljava/lang/String;

.field private static f:[Z

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:I


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0xa

    const/4 v1, 0x0

    sput-object v0, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    sput v1, Lcom/estrongs/android/util/ax;->d:I

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    new-array v0, v2, [Z

    sput-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sput v1, Lcom/estrongs/android/util/ax;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/ax;->i:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "\"\""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(I)V
    .locals 3

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    :try_start_0
    const-string v0, "ALTER TABLE visit_history ADD isdir INTEGER"

    sget-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v1, v1, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-ge p0, v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/ax;->l()V

    :cond_2
    const-string v0, "UPDATE cachedb_version SET dbver=3"

    sget-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v1, v1, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized c()Lcom/estrongs/android/util/ax;
    .locals 6

    const/4 v0, 0x0

    const-class v3, Lcom/estrongs/android/util/ax;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    if-nez v1, :cond_3

    sget-object v1, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/estrongs/android/util/ax;

    invoke-direct {v0}, Lcom/estrongs/android/util/ax;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Lcom/estrongs/android/util/ax;

    invoke-direct {v2}, Lcom/estrongs/android/util/ax;-><init>()V

    sput-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    sget-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v2, v2, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/util/ax;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v2, v2, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v2, 0x0

    :try_start_4
    sput-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/ax;

    invoke-direct {v0}, Lcom/estrongs/android/util/ax;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_5
    invoke-static {}, Lcom/estrongs/android/util/ax;->j()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/ax;

    invoke-direct {v0}, Lcom/estrongs/android/util/ax;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static j()V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS visit_history (id INTEGER PRIMARY KEY,isdir INTEGER,path TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v1, v1, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v1, v1, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/ax;->k()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/ax;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static k()I
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cachedb_version"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dbver"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO cachedb_version (dbver) values(3)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static l()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "visit_history"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE visit_history  SET path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/android/util/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v2, v2, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/estrongs/android/util/ax;->h:I

    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput p1, Lcom/estrongs/android/util/ax;->d:I

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    if-lez v0, :cond_1

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/estrongs/android/util/ax;->d:I

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/utils/aa;->b(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    sget-object v2, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    monitor-enter v2

    :try_start_1
    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    sget v1, Lcom/estrongs/android/util/ax;->h:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ax;->f:[Z

    sget-object v3, Lcom/estrongs/android/util/ax;->f:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    add-int/lit8 v1, v1, -0x1

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    sget v0, Lcom/estrongs/android/util/ax;->h:I

    sget v3, Lcom/estrongs/android/util/ax;->d:I

    if-ge v0, v3, :cond_6

    sget-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ax;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/estrongs/android/util/ax;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/estrongs/android/util/ax;->h:I

    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    sget-object v3, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_4
    sget v1, Lcom/estrongs/android/util/ax;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ax;->f:[Z

    sget-object v3, Lcom/estrongs/android/util/ax;->f:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ax;->d:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    sget v1, Lcom/estrongs/android/util/ax;->d:I

    add-int/lit8 v1, v1, -0x1

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ax;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/util/ax;->i:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/util/ax;->i:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/util/ax;->i:Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/ax;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/util/ax;->i()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()[Lcom/estrongs/android/util/ay;
    .locals 5

    sget v0, Lcom/estrongs/android/util/ax;->h:I

    new-array v1, v0, [Lcom/estrongs/android/util/ay;

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/estrongs/android/util/ax;->h:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/estrongs/android/util/ay;

    invoke-direct {v2}, Lcom/estrongs/android/util/ay;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    sget-object v3, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    sget v4, Lcom/estrongs/android/util/ax;->h:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    aget-object v2, v1, v0

    sget-object v3, Lcom/estrongs/android/util/ax;->f:[Z

    sget v4, Lcom/estrongs/android/util/ax;->h:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-boolean v3, v3, v4

    iput-boolean v3, v2, Lcom/estrongs/android/util/ay;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public f()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/estrongs/android/util/ax;->h:I

    sget-object v0, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "DELETE FROM visit_history"

    iget-object v1, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/util/ax;->g()V

    move v2, v1

    :goto_1
    sget v0, Lcom/estrongs/android/util/ax;->h:I

    if-ge v2, v0, :cond_0

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    if-ge v2, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v3, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO visit_history (path,isdir) values("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/util/ax;->e:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/estrongs/android/util/ax;->f:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public i()V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget v0, Lcom/estrongs/android/util/ax;->d:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/ax;->b:Lcom/estrongs/android/util/ax;

    iget-object v0, v0, Lcom/estrongs/android/util/ax;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "visit_history"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget v2, Lcom/estrongs/android/util/ax;->d:I

    if-le v0, v2, :cond_4

    sget v2, Lcom/estrongs/android/util/ax;->d:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_1
    const/4 v2, 0x0

    sput v2, Lcom/estrongs/android/util/ax;->h:I

    sget-object v2, Lcom/estrongs/android/util/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :goto_2
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v9

    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;Z)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v10

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4
.end method
