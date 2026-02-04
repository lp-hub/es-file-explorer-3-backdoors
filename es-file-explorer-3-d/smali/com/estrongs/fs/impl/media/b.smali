.class public abstract Lcom/estrongs/fs/impl/media/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field protected static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/text/SimpleDateFormat;


# instance fields
.field protected c:Landroid/net/Uri;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/Ringtones/"

    aput-object v1, v0, v2

    const-string v1, "/ringtones/"

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/fs/impl/media/b;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/Notifications/"

    aput-object v1, v0, v2

    const-string v1, "/notifications/"

    aput-object v1, v0, v3

    sput-object v0, Lcom/estrongs/fs/impl/media/b;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/media/b;->f:Ljava/util/Set;

    sget-object v0, Lcom/estrongs/fs/impl/media/b;->f:Ljava/util/Set;

    const-string v1, "windows-1252"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/fs/impl/media/b;->g:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/fs/impl/media/b;->g:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/media/ExifInterface;)J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "GPSDateStamp"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSTimeStamp"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v4, Lcom/estrongs/fs/impl/media/b;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x2f

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    if-lt v1, v2, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "album"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "album"

    const-string v1, "<unknown>"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "album"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v4, 0x1f4

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/aa;->a([Lcom/estrongs/android/pop/utils/af;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v2

    if-le v0, v4, :cond_10

    new-instance v0, Lcom/estrongs/android/pop/app/b/j;

    invoke-direct {v0, v8}, Lcom/estrongs/android/pop/app/b/j;-><init>(Z)V

    new-instance v1, Lcom/estrongs/fs/impl/media/c;

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/fs/impl/media/c;-><init>(Lcom/estrongs/fs/impl/media/b;[Lcom/estrongs/android/pop/utils/af;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    move-object v6, v0

    :goto_0
    array-length v0, v2

    if-lez v0, :cond_f

    array-length v0, v2

    if-gt v0, v4, :cond_f

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v8

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget-object v1, v2, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/utils/af;->a:Z

    if-eqz v1, :cond_2

    aget-object v1, v3, v0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v5, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v10, "!="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v10, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v10, " not like "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "%"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " and "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "!="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v5, v3, v0

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v3, v0

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/fs/impl/media/b;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_6
    return v8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    const/4 v1, 0x7

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_9
    iget-object v1, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/io/File;)Lcom/estrongs/fs/g;

    move-result-object v1

    if-eqz v6, :cond_a

    invoke-virtual {v6, v1}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_a
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-interface {p4, v1, v2}, Lcom/estrongs/a/b/l;->a(Ljava/lang/Object;[J)V

    invoke-interface {p4}, Lcom/estrongs/a/b/l;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_7
    move v8, v9

    goto :goto_6

    :catch_0
    move-exception v0

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    :cond_e
    move-object v3, v0

    goto/16 :goto_5

    :cond_f
    move-object v0, v7

    goto/16 :goto_3

    :cond_10
    move-object v6, v7

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/io/File;)Lcom/estrongs/fs/g;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/a/b/l",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p5}, Lcom/estrongs/android/pop/utils/bt;->a(Lcom/estrongs/android/util/TypedMap;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/estrongs/fs/h;Lcom/estrongs/a/b/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v9, v4

    :goto_1
    const/4 v4, 0x0

    move v11, v4

    move-object v10, v5

    :goto_2
    if-ge v11, v9, :cond_8

    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v9, -0x1

    if-ge v11, v4, :cond_2

    const/16 v4, 0x1f4

    move v5, v4

    :goto_3
    const/4 v4, 0x0

    move v6, v4

    :goto_4
    if-ge v6, v5, :cond_5

    mul-int/lit16 v4, v11, 0x1f4

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_4

    :cond_1
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v4, v4, 0x1

    move v9, v4

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v9, -0x1

    mul-int/lit16 v5, v5, 0x1f4

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_3

    :cond_3
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v3

    move-object v3, v10

    :goto_6
    :try_start_4
    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_7
    return-void

    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " IN ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_7

    :goto_8
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_1
    move-exception v3

    move-object v3, v4

    goto :goto_6

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-object v10, v4

    goto/16 :goto_2

    :cond_8
    :try_start_7
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v3

    :goto_a
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    :cond_b
    :try_start_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "/."

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    if-nez v4, :cond_e

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :cond_e
    :try_start_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    move v5, v4

    :goto_c
    const/4 v4, 0x0

    move v9, v4

    :goto_d
    if-ge v9, v5, :cond_18

    add-int/lit8 v4, v5, -0x1

    if-ge v9, v4, :cond_14

    const/16 v4, 0x1f4

    move v8, v4

    :goto_e
    new-array v11, v8, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    move v7, v4

    :goto_f
    if-ge v7, v8, :cond_17

    mul-int/lit16 v4, v9, 0x1f4

    add-int/2addr v4, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v11, v7

    aget-object v6, v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/estrongs/android/util/av;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "*/*"

    if-eq v12, v6, :cond_f

    aget-object v12, v11, v7

    const-string v13, "mime_type"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_f
    :try_start_a
    aget-object v6, v11, v7

    const-string v12, "_size"

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_10
    :try_start_b
    aget-object v6, v11, v7

    const-string v12, "title"

    invoke-static {v4}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v11, v7

    const-string v12, "_display_name"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/estrongs/fs/impl/h/b;

    if-eqz v6, :cond_12

    aget-object v6, v11, v7

    const-string v12, "is_music"

    const-string v13, "1"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v11, v7

    const-string v12, "duration"

    const-string v13, "0"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/fs/impl/media/b;->a:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v6, v6, v12

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_10

    sget-object v6, Lcom/estrongs/fs/impl/media/b;->a:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v6, v6, v12

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_15

    :cond_10
    const/4 v6, 0x1

    :goto_11
    sget-object v12, Lcom/estrongs/fs/impl/media/b;->b:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gtz v12, :cond_11

    sget-object v12, Lcom/estrongs/fs/impl/media/b;->b:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_16

    :cond_11
    const/4 v4, 0x1

    :goto_12
    aget-object v12, v11, v7

    const-string v13, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    aget-object v6, v11, v7

    const-string v12, "is_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_12
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_f

    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto/16 :goto_c

    :cond_14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v6, v5, -0x1

    mul-int/lit16 v6, v6, 0x1f4

    sub-int/2addr v4, v6

    move v8, v4

    goto/16 :goto_e

    :cond_15
    const/4 v6, 0x0

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto/16 :goto_d

    :cond_18
    invoke-static {}, Lcom/estrongs/android/util/aw;->d()Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x0

    move v13, v4

    :goto_13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_2e

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v5

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/estrongs/fs/impl/h/b;

    if-nez v6, :cond_19

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/estrongs/fs/impl/p/b;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v6, :cond_29

    :cond_19
    :try_start_c
    invoke-static {}, Lcom/estrongs/fs/impl/media/d;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v5, 0x7

    invoke-virtual {v8, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0xc

    invoke-virtual {v8, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x2

    invoke-virtual {v8, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v16

    if-nez v7, :cond_1a

    if-nez v6, :cond_1a

    if-eqz v5, :cond_23

    :cond_1a
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_1b

    const-string v12, "ISO-8859-1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v0, v12

    move/from16 v17, v0

    add-int v8, v8, v17

    :cond_1b
    if-eqz v6, :cond_1c

    const-string v11, "ISO-8859-1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    array-length v0, v11

    move/from16 v17, v0

    add-int v8, v8, v17

    :cond_1c
    if-eqz v5, :cond_1d

    const-string v9, "ISO-8859-1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v0, v9

    move/from16 v17, v0

    add-int v8, v8, v17

    :cond_1d
    new-array v0, v8, [B

    move-object/from16 v17, v0

    const/4 v8, 0x0

    if-eqz v7, :cond_1e

    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v12

    move/from16 v18, v0

    add-int v8, v8, v18

    :cond_1e
    if-eqz v6, :cond_1f

    const/16 v18, 0x0

    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v11

    move/from16 v18, v0

    add-int v8, v8, v18

    :cond_1f
    if-eqz v5, :cond_20

    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    move-object/from16 v0, v17

    array-length v8, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/estrongs/android/util/g;->a([BIZ)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_23

    sget-object v17, Lcom/estrongs/fs/impl/media/b;->f:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_23

    if-eqz v7, :cond_21

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_21
    if-eqz v6, :cond_22

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_22
    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_23
    if-eqz v7, :cond_24

    const-string v8, "title"

    invoke-virtual {v14, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-static {v14, v4, v6}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_25

    const-string v6, "mime_type"

    invoke-virtual {v14, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v5, :cond_28

    const-string v6, "artist"

    invoke-virtual {v14, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    if-eqz v16, :cond_26

    const-string v5, "duration"

    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_26
    :goto_15
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v14, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_27
    :goto_16
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_13

    :cond_28
    :try_start_e
    const-string v5, "artist"

    const-string v6, "<unknown>"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_14

    :catch_2
    move-exception v5

    const/4 v5, 0x0

    :try_start_f
    invoke-static {v14, v4, v5}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "artist"

    const-string v6, "<unknown>"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/estrongs/fs/impl/j/b;

    if-eqz v6, :cond_27

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-wide v7

    const v6, 0x10011

    if-eq v5, v6, :cond_2a

    const v6, 0x10014

    if-ne v5, v6, :cond_2d

    :cond_2a
    const/4 v6, 0x0

    :try_start_10
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_17
    if-eqz v5, :cond_2d

    const/4 v6, 0x2

    :try_start_11
    new-array v6, v6, [F

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v9

    if-eqz v9, :cond_2b

    const-string v9, "latitude"

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v14, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v9, "longitude"

    const/4 v11, 0x1

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2b
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/media/ExifInterface;)J

    move-result-wide v11

    const-wide/16 v15, -0x1

    cmp-long v6, v11, v15

    if-eqz v6, :cond_2c

    const-string v6, "datetaken"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v14, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2c
    const-string v6, "Orientation"

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2d

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    :goto_18
    const-string v6, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2d
    const-string v5, "date_modified"

    const-wide/16 v11, 0x3e8

    div-long v6, v7, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v14, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_16

    :catch_3
    move-exception v5

    move-object v5, v6

    goto :goto_17

    :pswitch_1
    const/16 v5, 0x5a

    goto :goto_18

    :pswitch_2
    const/16 v5, 0xb4

    goto :goto_18

    :pswitch_3
    const/16 v5, 0x10e

    goto :goto_18

    :cond_2e
    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/estrongs/fs/impl/j/b;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_32

    :try_start_12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_2f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    move v8, v4

    :goto_19
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date_modified"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    move v7, v4

    :goto_1a
    if-ge v7, v8, :cond_32

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v8, -0x1

    if-ge v7, v4, :cond_30

    const/16 v4, 0x1f4

    move v5, v4

    :goto_1b
    const/4 v4, 0x0

    move v6, v4

    :goto_1c
    if-ge v6, v5, :cond_33

    mul-int/lit16 v4, v7, 0x1f4

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v6, :cond_31

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1c

    :cond_2f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    move v8, v4

    goto :goto_19

    :cond_30
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v8, -0x1

    mul-int/lit16 v5, v5, 0x1f4

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_1b

    :cond_31
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1d

    :catch_4
    move-exception v3

    :cond_32
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :cond_33
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1a

    :cond_34
    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    :try_start_14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_32

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/utils/bt;->b(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1e

    :catchall_1
    move-exception v3

    move-object v10, v5

    goto/16 :goto_a

    :catchall_2
    move-exception v3

    move-object v10, v4

    goto/16 :goto_a

    :catchall_3
    move-exception v4

    move-object v10, v3

    move-object v3, v4

    goto/16 :goto_a

    :catch_5
    move-exception v3

    move-object v3, v5

    goto/16 :goto_6

    :catch_6
    move-exception v6

    goto/16 :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    move v1, v0

    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v1, -0x1

    if-ge v5, v0, :cond_4

    const/16 v0, 0x1f4

    move v3, v0

    :goto_4
    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_6

    mul-int/lit16 v0, v5, 0x1f4

    add-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " like "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "%"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/lit16 v3, v3, 0x1f4

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_4

    :cond_5
    const-string v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " like "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "%"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    move v1, v0

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v1, -0x1

    if-ge v5, v0, :cond_1

    const/16 v0, 0x1f4

    move v2, v0

    :goto_2
    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_4

    mul-int/lit16 v0, v5, 0x1f4

    add-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v1, -0x1

    mul-int/lit16 v2, v2, 0x1f4

    sub-int/2addr v0, v2

    move v2, v0

    goto :goto_2

    :cond_2
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/media/b;->c:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/estrongs/fs/impl/media/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " IN ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1
.end method
