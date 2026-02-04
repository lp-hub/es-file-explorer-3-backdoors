.class public Lcom/estrongs/fs/impl/f/c;
.super Lcom/estrongs/fs/impl/f/a;


# static fields
.field static final a:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field protected b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/fs/impl/f/c;->c:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/fs/impl/f/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/f/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "gallery://local/buckets/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-array v4, v9, [Ljava/lang/Object;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v2

    aput-object p1, v4, v3

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    invoke-virtual {v1, v9, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/o;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v10

    invoke-static {v10}, Lcom/estrongs/android/pop/utils/aa;->a([Lcom/estrongs/android/pop/utils/af;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v10

    if-lez v0, :cond_c

    array-length v0, v10

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v8

    :goto_0
    array-length v1, v10

    if-ge v0, v1, :cond_2

    aget-object v1, v10, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/utils/af;->a:Z

    if-eqz v1, :cond_1

    aget-object v1, v2, v0

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
    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " not like "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "_data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "!="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "bucket_id"

    aput-object v5, v2, v8

    const-string v5, "bucket_display_name"

    aput-object v5, v2, v7

    const-string v5, "_data"

    aput-object v5, v2, v9

    const-string v5, "count(bucket_id)"

    aput-object v5, v2, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1=1) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "group by ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "bucket_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    if-nez v11, :cond_4

    move-object v0, v9

    :goto_4
    return-object v0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v12

    :cond_5
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v6, v0

    invoke-static {v3}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    aget v0, v6, v0

    if-lez v0, :cond_5

    array-length v0, v10

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_a

    const v0, 0x7fffffff

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/utils/aa;->d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ae;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v0, v7, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v2, v8

    move v1, v8

    :goto_6
    iget-object v0, v7, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, v7, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/av;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v1, 0x1

    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v8

    :cond_9
    const/4 v0, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    sub-int v1, v2, v1

    aput v1, v6, v0

    :cond_a
    const/4 v0, 0x0

    aget v0, v6, v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/estrongs/fs/impl/f/d;

    invoke-direct {p0, v4}, Lcom/estrongs/fs/impl/f/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    move-object v1, p0

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/fs/impl/f/d;-><init>(Lcom/estrongs/fs/impl/f/c;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;[ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b
    move v0, v1

    goto :goto_7

    :cond_c
    move-object v3, v4

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const v1, 0x7fffffff

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/aa;->d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ae;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v13, :cond_c

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/ae;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/utils/ae;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " not like "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_1
    const-string v1, " and "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "_data"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "!="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v4

    move-object v4, v1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/estrongs/fs/impl/f/c;->a:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket_id = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/fs/impl/f/c;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    if-nez v14, :cond_5

    move-object v1, v11

    :goto_4
    return-object v1

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_6
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v12, v1, 0x1

    move/from16 v0, p2

    if-ge v12, v0, :cond_6

    move v1, v12

    goto :goto_6

    :cond_6
    const/4 v1, -0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_8

    move/from16 v0, p3

    if-ne v12, v0, :cond_8

    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object v1, v11

    goto :goto_4

    :cond_8
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "gallery://local/buckets/%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_9

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, v13, Lcom/estrongs/android/pop/utils/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0x1f4

    if-le v1, v5, :cond_9

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v12

    goto :goto_6

    :cond_9
    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "_size"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v1, "date_modified"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v1, Lcom/estrongs/fs/impl/f/b;

    const-wide/16 v15, 0x3e8

    mul-long/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lcom/estrongs/fs/impl/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v12

    goto :goto_6

    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_a
    move-object v10, v3

    move-object v4, v5

    goto/16 :goto_3

    :cond_b
    move-object v2, v1

    goto/16 :goto_0

    :cond_c
    move-object v10, v4

    move-object v4, v5

    goto/16 :goto_3
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/estrongs/fs/impl/f/c;->a(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/estrongs/fs/impl/f/c;->g(Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/f/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/estrongs/fs/impl/f/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v4, v0, Lcom/estrongs/fs/b/o;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/estrongs/fs/b/o;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/f/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/fs/impl/f/c;->b:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/f/c;->c:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/estrongs/fs/impl/f/c;->c:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/f/c;->c:[Ljava/lang/String;

    goto :goto_0
.end method
