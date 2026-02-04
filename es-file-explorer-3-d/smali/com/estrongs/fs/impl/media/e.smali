.class public abstract Lcom/estrongs/fs/impl/media/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/BitmapFactory$Options;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/fs/impl/media/e;->b:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/fs/impl/media/e;->b:Ljava/text/SimpleDateFormat;

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
    sget-object v4, Lcom/estrongs/fs/impl/media/e;->b:Ljava/text/SimpleDateFormat;

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

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Lcom/estrongs/android/pop/app/b/i;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const/4 v2, 0x0

    const-string v3, "keyword"

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v2, "keyword"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_0
    new-instance v17, Lcom/estrongs/android/pop/app/b/j;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/b/j;-><init>(Z)V

    const/4 v2, 0x0

    const-string v3, "keyword"

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/estrongs/android/pop/app/b/n;

    const-string v2, "keyword"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/estrongs/android/pop/app/b/n;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    move-object v8, v3

    :goto_1
    invoke-static {}, Lcom/estrongs/android/util/ak;->h()Lcom/estrongs/fs/h;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/estrongs/android/pop/utils/aa;->a([Lcom/estrongs/android/pop/utils/af;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_0

    new-instance v2, Lcom/estrongs/fs/impl/media/f;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/estrongs/fs/impl/media/f;-><init>([Lcom/estrongs/android/pop/utils/af;[Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    :cond_0
    const/4 v2, 0x0

    const-string v3, "category"

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v2, "category"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    :goto_2
    const-wide/16 v9, -0x1

    const-wide/16 v3, -0x1

    :try_start_0
    const-string v2, "minSize"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    move-wide v15, v9

    :goto_3
    :try_start_1
    const-string v2, "maxSize"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    move-wide v9, v2

    :goto_4
    const-wide/16 v11, -0x1

    const-wide/16 v3, -0x1

    :try_start_2
    const-string v2, "minDate"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v11

    move-wide v13, v11

    :goto_5
    :try_start_3
    const-string v2, "maxDate"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    move-wide v11, v2

    :goto_6
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v2, "_data"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v20, " like "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "image"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "media_type=1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_7
    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_b

    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v6, 0x1f4

    if-gt v2, v6, :cond_b

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, v18

    array-length v6, v0

    if-ge v2, v6, :cond_b

    aget-object v6, v18, v2

    iget-boolean v6, v6, Lcom/estrongs/android/pop/utils/af;->a:Z

    if-eqz v6, :cond_a

    aget-object v6, v19, v2

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v20, " and "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "_data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "!="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v20, " and "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "_data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, " not like "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v21, "%"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_0
    move-exception v2

    move-wide v15, v9

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-wide v9, v3

    goto/16 :goto_4

    :catch_2
    move-exception v2

    move-wide v13, v11

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-wide v11, v3

    goto/16 :goto_6

    :cond_4
    const-string v2, "music"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "media_type=2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_5
    const-string v2, "video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "media_type=3"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_6
    const-string v2, "apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " like "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "%.apk"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_7
    const-string v2, "compressed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/av;->f()Ljava/lang/String;

    move-result-object v2

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v2, v6

    if-lez v2, :cond_2

    const-string v2, " and ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_a
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v2, v0, :cond_9

    if-lez v2, :cond_8

    const-string v20, " or "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string v20, "_data"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, " like "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v6, v2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    const-string v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_a
    const-string v6, " and "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v20, "_data"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v20, "!="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v20, v19, v2

    invoke-static/range {v20 .. v20}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :cond_b
    if-eqz v5, :cond_e

    const-string v2, " and ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move v6, v2

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_d

    if-lez v6, :cond_c

    const-string v2, " or "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const-string v2, "_data"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v18, " like "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "%"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "%"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b

    :cond_d
    const/16 v2, 0x29

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    const-wide/16 v5, -0x1

    cmp-long v2, v15, v5

    if-lez v2, :cond_f

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_size>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const-wide/16 v5, -0x1

    cmp-long v2, v9, v5

    if-lez v2, :cond_10

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_size<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    const-wide/16 v5, -0x1

    cmp-long v2, v13, v5

    if-lez v2, :cond_11

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    const-wide/16 v5, -0x1

    cmp-long v2, v11, v5

    if-lez v2, :cond_12

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, " and "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " not like "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "%/.%"

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-nez v3, :cond_14

    :goto_c
    return-object v2

    :cond_14
    :try_start_4
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/util/ak;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/fs/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_15
    :goto_d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_18

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-eqz v6, :cond_16

    const/4 v2, 0x0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    :try_start_5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/estrongs/fs/impl/local/b;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/g;)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Lcom/estrongs/fs/impl/m/a;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v7}, Lcom/estrongs/fs/impl/m/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/g;)V

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/estrongs/android/pop/app/b/n;->a()I

    move-result v7

    iput v7, v6, Lcom/estrongs/fs/impl/m/a;->a:I

    :cond_17
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_18
    :try_start_6
    new-instance v4, Lcom/estrongs/fs/impl/media/g;

    invoke-direct {v4}, Lcom/estrongs/fs/impl/media/g;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_19
    move-object v6, v2

    goto/16 :goto_2

    :cond_1a
    move-object v8, v2

    goto/16 :goto_1

    :cond_1b
    move-object v5, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 11
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    const/16 v4, 0x64

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v4

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v4

    move v1, v0

    :goto_2
    move v6, v2

    :goto_3
    if-ge v6, v1, :cond_0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, v1, -0x1

    if-ge v6, v0, :cond_4

    move v3, v4

    :goto_4
    move v5, v2

    :goto_5
    if-ge v5, v3, :cond_6

    mul-int v0, v6, v4

    add-int/2addr v0, v5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v5, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_data like "

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

    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    move v3, v0

    goto :goto_4

    :cond_5
    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data like "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "%"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
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

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3
.end method

.method public static a(Ljava/util/List;Ljava/util/Set;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_b

    const/4 v9, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v9, v4

    goto :goto_1

    :cond_1
    const/4 v10, -0x1

    if-eqz v9, :cond_45

    :try_start_1
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "storage_id"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") limit (1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_44

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_43

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    :goto_3
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    move v10, v4

    move-object v11, v5

    :goto_5
    :try_start_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_5
    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_7
    return-void

    :cond_4
    :try_start_6
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    :cond_6
    const/4 v4, -0x1

    if-ne v10, v4, :cond_7

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parent in (select _id from files where _data in ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_9
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_9

    :goto_a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parent in (select _id from files where _data in ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")) or parent=0 and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "storage_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_12

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_b
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_c

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    move v9, v4

    :goto_c
    const/4 v4, 0x0

    move v10, v4

    :goto_d
    if-ge v10, v9, :cond_9

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v9, -0x1

    if-ge v10, v4, :cond_d

    const/16 v4, 0x1f4

    move v5, v4

    :goto_e
    const/4 v4, 0x0

    move v6, v4

    :goto_f
    if-ge v6, v5, :cond_f

    mul-int/lit16 v4, v10, 0x1f4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v6, :cond_e

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_10
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_f

    :cond_c
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    move v9, v4

    goto :goto_c

    :cond_d
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v9, -0x1

    mul-int/lit16 v5, v5, 0x1f4

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_e

    :cond_e
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_f
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data IN ("

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

    move-result-object v11

    if-eqz v11, :cond_11

    :goto_11
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_11
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_d

    :cond_12
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-nez v4, :cond_13

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :cond_13
    :try_start_8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_15

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    move v5, v4

    :goto_12
    const/4 v4, 0x0

    move v8, v4

    :goto_13
    if-ge v8, v5, :cond_1a

    add-int/lit8 v4, v5, -0x1

    if-ge v8, v4, :cond_16

    const/16 v4, 0x1f4

    move v7, v4

    :goto_14
    new-array v9, v7, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    move v6, v4

    :goto_15
    if-ge v6, v7, :cond_19

    mul-int/lit16 v4, v8, 0x1f4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    aput-object v10, v9, v6

    aget-object v10, v9, v6

    const-string v12, "_data"

    invoke-virtual {v10, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_17

    aget-object v4, v9, v6

    const-string v10, "format"

    const/16 v12, 0x3001

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_14
    :goto_16
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_15

    :cond_15
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto :goto_12

    :cond_16
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v6, v5, -0x1

    mul-int/lit16 v6, v6, 0x1f4

    sub-int/2addr v4, v6

    move v7, v4

    goto :goto_14

    :cond_17
    invoke-static {v4}, Lcom/estrongs/android/util/av;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "*/*"

    if-eq v12, v10, :cond_18

    aget-object v12, v9, v6

    const-string v13, "mime_type"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_18
    :try_start_9
    aget-object v10, v9, v6

    const-string v12, "_size"

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_17
    :try_start_a
    aget-object v10, v9, v6

    const-string v12, "title"

    invoke-static {v4}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v10, v9, v6

    const-string v12, "_display_name"

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    aget-object v4, v9, v6

    const-string v10, "is_music"

    const-string v12, "1"

    invoke-virtual {v4, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v9, v6

    const-string v10, "duration"

    const-string v12, "0"

    invoke-virtual {v4, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_19
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_13

    :cond_1a
    if-eqz v11, :cond_1b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1b
    const/4 v4, 0x0

    move v14, v4

    :goto_18
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_3c

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v5

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v16

    invoke-static {v4}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v16, :cond_1c

    if-eqz v6, :cond_35

    :cond_1c
    if-eqz v16, :cond_2f

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v13, v5

    :goto_19
    :try_start_b
    invoke-static {}, Lcom/estrongs/fs/impl/media/d;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v5, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x9

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v19

    if-nez v7, :cond_1d

    if-nez v6, :cond_1d

    if-eqz v5, :cond_26

    :cond_1d
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_1e

    const-string v12, "ISO-8859-1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v0, v12

    move/from16 v20, v0

    add-int v8, v8, v20

    :cond_1e
    if-eqz v6, :cond_1f

    const-string v10, "ISO-8859-1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v0, v10

    move/from16 v20, v0

    add-int v8, v8, v20

    :cond_1f
    if-eqz v5, :cond_20

    const-string v9, "ISO-8859-1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v0, v9

    move/from16 v20, v0

    add-int v8, v8, v20

    :cond_20
    new-array v0, v8, [B

    move-object/from16 v20, v0

    const/4 v8, 0x0

    if-eqz v7, :cond_21

    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v12, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v12

    move/from16 v21, v0

    add-int v8, v8, v21

    :cond_21
    if-eqz v6, :cond_22

    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v10, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v10

    move/from16 v21, v0

    add-int v8, v8, v21

    :cond_22
    if-eqz v5, :cond_23

    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v9, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    move-object/from16 v0, v20

    array-length v8, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v8, v1}, Lcom/estrongs/android/util/g;->a([BIZ)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_26

    sget-object v20, Lcom/estrongs/fs/impl/media/b;->f:Ljava/util/Set;

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26

    if-eqz v7, :cond_24

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_24
    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_25
    if-eqz v5, :cond_26

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_26
    if-eqz v7, :cond_27

    const-string v8, "title"

    invoke-virtual {v15, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-static {v15, v4, v6}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_28

    const-string v6, "mime_type"

    move-object/from16 v0, v18

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    if-eqz v5, :cond_30

    const-string v6, "artist"

    invoke-virtual {v15, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    if-eqz v19, :cond_29

    const-string v5, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v15, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz v16, :cond_33

    const-string v5, "title"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "title"

    invoke-static {v4}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    sget-object v5, Lcom/estrongs/fs/impl/media/b;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_2b

    sget-object v5, Lcom/estrongs/fs/impl/media/b;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_31

    :cond_2b
    const/4 v5, 0x1

    move v6, v5

    :goto_1b
    sget-object v5, Lcom/estrongs/fs/impl/media/b;->b:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_2c

    sget-object v5, Lcom/estrongs/fs/impl/media/b;->b:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_32

    :cond_2c
    const/4 v5, 0x1

    :goto_1c
    const-string v7, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v15, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_2d
    :goto_1d
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2e
    :goto_1e
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_18

    :cond_2f
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v13, v5

    goto/16 :goto_19

    :cond_30
    :try_start_d
    const-string v5, "artist"

    const-string v6, "<unknown>"

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1a

    :catch_1
    move-exception v5

    const/4 v5, 0x0

    :try_start_e
    invoke-static {v15, v4, v5}, Lcom/estrongs/fs/impl/media/b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "artist"

    const-string v6, "<unknown>"

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1d

    :cond_31
    const/4 v5, 0x0

    move v6, v5

    goto :goto_1b

    :cond_32
    const/4 v5, 0x0

    goto :goto_1c

    :cond_33
    :try_start_f
    invoke-static {}, Lcom/estrongs/android/util/aw;->g()Z

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v5, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_34

    const-string v7, "width"

    invoke-virtual {v15, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-eqz v6, :cond_2d

    const-string v5, "height"

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1d

    :cond_35
    :try_start_10
    invoke-static {v4}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {}, Lcom/estrongs/android/util/aw;->f()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v6

    if-eqz v6, :cond_36

    :try_start_11
    sget-object v6, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v6, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v6, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    sget-object v6, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v9, Lcom/estrongs/fs/impl/media/e;->a:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v10, "width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_36
    :goto_1f
    const v6, 0x10011

    if-eq v5, v6, :cond_37

    const v6, 0x10014

    if-ne v5, v6, :cond_3a

    :cond_37
    const/4 v6, 0x0

    :try_start_12
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_20
    if-eqz v5, :cond_3a

    const/4 v6, 0x2

    :try_start_13
    new-array v6, v6, [F

    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v9

    if-eqz v9, :cond_38

    const-string v9, "latitude"

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v15, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v9, "longitude"

    const/4 v10, 0x1

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_38
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/e;->a(Landroid/media/ExifInterface;)J

    move-result-wide v9

    const-wide/16 v12, -0x1

    cmp-long v6, v9, v12

    if-eqz v6, :cond_3b

    const-string v6, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_39
    :goto_21
    const-string v6, "Orientation"

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    :goto_22
    const-string v6, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3a
    const-string v5, "date_modified"

    const-wide/16 v9, 0x3e8

    div-long v6, v7, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    invoke-virtual {v3, v5, v15, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1e

    :catch_2
    move-exception v5

    move-object v5, v6

    goto :goto_20

    :cond_3b
    invoke-static {v5}, Lcom/estrongs/fs/impl/media/e;->b(Landroid/media/ExifInterface;)J

    move-result-wide v9

    const-wide/16 v12, -0x1

    cmp-long v6, v9, v12

    if-eqz v6, :cond_39

    sub-long v12, v7, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v16, 0x5265c00

    cmp-long v6, v12, v16

    if-ltz v6, :cond_39

    const-string v6, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_21

    :pswitch_1
    const/16 v5, 0x5a

    goto :goto_22

    :pswitch_2
    const/16 v5, 0xb4

    goto :goto_22

    :pswitch_3
    const/16 v5, 0x10e

    goto :goto_22

    :cond_3c
    :try_start_14
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0x1f4

    if-nez v4, :cond_3d

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    move v8, v4

    :goto_23
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date_modified"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    move v7, v4

    :goto_24
    if-ge v7, v8, :cond_40

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v8, -0x1

    if-ge v7, v4, :cond_3e

    const/16 v4, 0x1f4

    move v5, v4

    :goto_25
    const/4 v4, 0x0

    move v6, v4

    :goto_26
    if-ge v6, v5, :cond_41

    mul-int/lit16 v4, v7, 0x1f4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v6, :cond_3f

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_27
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_26

    :cond_3d
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    move v8, v4

    goto :goto_23

    :cond_3e
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v8, -0x1

    mul-int/lit16 v5, v5, 0x1f4

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_25

    :cond_3f
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_27

    :catch_3
    move-exception v3

    :cond_40
    :try_start_15
    sget-boolean v3, Lcom/estrongs/android/pop/m;->X:Z

    if-eqz v3, :cond_42

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_42

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/utils/bt;->b(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_28

    :cond_41
    :try_start_16
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_24

    :cond_42
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :catchall_1
    move-exception v3

    move-object v11, v5

    goto/16 :goto_8

    :catch_4
    move-exception v6

    goto/16 :goto_1f

    :catch_5
    move-exception v10

    goto/16 :goto_17

    :catch_6
    move-exception v4

    goto/16 :goto_5

    :catch_7
    move-exception v4

    move-object v11, v5

    goto/16 :goto_5

    :catch_8
    move-exception v6

    move v10, v4

    move-object v11, v5

    goto/16 :goto_5

    :cond_43
    move v4, v10

    goto/16 :goto_3

    :cond_44
    move v4, v10

    goto/16 :goto_4

    :cond_45
    move v4, v10

    move-object v5, v11

    goto/16 :goto_4

    :cond_46
    move-object v4, v9

    goto/16 :goto_2

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

.method private static b(Landroid/media/ExifInterface;)J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    sget-object v4, Lcom/estrongs/fs/impl/media/e;->b:Ljava/text/SimpleDateFormat;

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

.method public static b(Ljava/util/List;)V
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

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

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

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

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data IN ("

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

.method public static d(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

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

.method public static f(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data like "

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

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

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


# virtual methods
.method protected abstract a(Lcom/estrongs/fs/impl/local/b;)Lcom/estrongs/fs/g;
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/estrongs/fs/g;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/g;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/estrongs/android/pop/utils/bt;->a(Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/aa;->a([Lcom/estrongs/android/pop/utils/af;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/pop/app/b/j;

    invoke-direct {v6, v3}, Lcom/estrongs/android/pop/app/b/j;-><init>(Z)V

    array-length v0, v2

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/media/h;

    invoke-direct {v0, p0, v2, v5}, Lcom/estrongs/fs/impl/media/h;-><init>(Lcom/estrongs/fs/impl/media/e;[Lcom/estrongs/android/pop/utils/af;[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/ak;->h()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/h;)V

    array-length v0, v2

    if-lez v0, :cond_d

    array-length v0, v2

    if-gt v0, v1, :cond_d

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v3

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_6

    aget-object v1, v2, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/utils/af;->a:Z

    if-eqz v1, :cond_4

    aget-object v1, v5, v0

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v8, "_data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "!="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "_data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " not like "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "%"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, " and "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "_data"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "!="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v8, v5, v0

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "date_modified"

    aput-object v5, v2, v3

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not like "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%/.%"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez v1, :cond_8

    move-object v4, v0

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/media/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    :try_start_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/estrongs/fs/impl/local/b;

    invoke-direct {v3, v5}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v3}, Lcom/estrongs/android/pop/app/b/j;->a(Lcom/estrongs/fs/g;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v3}, Lcom/estrongs/fs/impl/media/e;->a(Lcom/estrongs/fs/impl/local/b;)Lcom/estrongs/fs/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto/16 :goto_0

    :cond_c
    move-object v3, v0

    goto/16 :goto_5

    :cond_d
    move-object v0, v4

    goto/16 :goto_3
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
