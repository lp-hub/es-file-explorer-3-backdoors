.class Lcom/estrongs/android/pop/app/editor/ae;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/editor/ae;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/b;Ljava/io/OutputStream;IIJJ)I
    .locals 12

    const/16 v2, 0x1000

    new-array v6, v2, [C

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v11, v2

    move v2, v4

    move v4, v5

    move v5, v11

    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    const/4 v4, 0x0

    array-length v7, v6

    invoke-virtual {p1, v6, v4, v7}, Lcom/estrongs/android/pop/app/editor/b;->read([CII)I

    move-result v4

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v7

    cmp-long v9, v7, p5

    if-ltz v9, :cond_1

    if-nez v5, :cond_1

    int-to-long v3, v4

    sub-long v7, v7, p5

    sub-long/2addr v3, v7

    long-to-int v4, v3

    const/4 v3, 0x1

    :cond_1
    if-lez v4, :cond_3

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([CII)V

    move/from16 v0, p4

    invoke-direct {p0, v7, p3, v0}, Lcom/estrongs/android/pop/app/editor/ae;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    if-nez v3, :cond_2

    array-length v9, v8

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    sub-int v7, v9, v7

    add-int/2addr v2, v7

    :cond_2
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/pop/app/editor/b;->a(J)V

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    move/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lcom/estrongs/android/pop/app/editor/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_4
    return v2
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/estrongs/android/pop/app/editor/an;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/a;Lcom/estrongs/android/pop/app/editor/a;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/editor/a;->e()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/a;->f()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x1000

    new-array v3, v3, [B

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    const/4 v0, 0x0

    :try_start_0
    array-length v4, v3

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updateFile error!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateFile file close error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateFile file close error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateFile file close error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/a;->b()Z

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/editor/a;->a(Ljava/io/File;)Z

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/a;Ljava/io/OutputStream;JJ)V
    .locals 9

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1000

    new-array v6, v0, [B

    move v4, v5

    move v0, v5

    move v3, v5

    :goto_0
    const/4 v1, -0x1

    if-eq v3, v1, :cond_4

    array-length v1, v6

    invoke-virtual {p1, v6, v5, v1}, Lcom/estrongs/android/pop/app/editor/a;->a([BII)I

    move-result v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/a;->a()J

    move-result-wide v7

    cmp-long v3, v7, p3

    if-ltz v3, :cond_6

    if-nez v4, :cond_6

    int-to-long v0, v1

    sub-long/2addr v7, p3

    sub-long/2addr v0, v7

    long-to-int v0, v0

    move v1, v2

    move v3, v0

    :goto_1
    if-lez v3, :cond_0

    invoke-virtual {p2, v6, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {p1, p5, p6}, Lcom/estrongs/android/pop/app/editor/a;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/pop/app/editor/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    move v4, v2

    move v0, v1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v3, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v2, v6, :cond_4

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/c;->d()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/estrongs/android/pop/app/editor/a;->a(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/estrongs/android/pop/app/editor/a;->a(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v19

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/estrongs/android/pop/app/editor/a;->f()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/a;->c()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/c;->b()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const v6, 0x7f0b02cc

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "no space for saving"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/a;->d()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/estrongs/android/pop/app/editor/a;->d()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    monitor-exit v20

    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v5, v2

    sub-long v5, v7, v5

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-gez v2, :cond_6

    const-wide/16 v5, 0x0

    :cond_6
    if-nez v18, :cond_f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/estrongs/android/pop/app/editor/ae;->a(Lcom/estrongs/android/pop/app/editor/a;Ljava/io/OutputStream;JJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ai;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/android/pop/app/editor/ai;->b(J)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/b;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual/range {v19 .. v19}, Lcom/estrongs/android/pop/app/editor/a;->c()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;J)J

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/estrongs/android/pop/app/editor/ae;->a(Lcom/estrongs/android/pop/app/editor/a;Lcom/estrongs/android/pop/app/editor/a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/c;->e()V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;)V

    const/16 v2, 0x1000

    new-array v7, v2, [C

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    new-instance v8, Lcom/estrongs/android/pop/app/editor/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v11}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/estrongs/android/pop/app/editor/b;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ai;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/android/pop/app/editor/ai;->a(J)Lcom/estrongs/android/pop/app/editor/aj;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v8

    iget-wide v9, v2, Lcom/estrongs/android/pop/app/editor/aj;->b:J

    invoke-virtual {v8, v9, v10}, Lcom/estrongs/android/pop/app/editor/b;->a(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget v2, v2, Lcom/estrongs/android/pop/app/editor/aj;->a:I

    invoke-static {v8, v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    :goto_4
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v9

    cmp-long v2, v9, v5

    if-nez v2, :cond_17

    :cond_9
    const/4 v2, 0x3

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v6

    if-gez v6, :cond_19

    :cond_b
    new-instance v2, Lcom/estrongs/android/pop/app/editor/ah;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/estrongs/android/pop/app/editor/ah;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/a;->d()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz v19, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/estrongs/android/pop/app/editor/a;->d()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_e
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    :goto_8
    monitor-exit v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :cond_f
    :try_start_b
    new-instance v10, Lcom/estrongs/android/pop/app/editor/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v11}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v9, v11}, Lcom/estrongs/android/pop/app/editor/b;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v13

    move-object/from16 v9, p0

    move-object v11, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-direct/range {v9 .. v17}, Lcom/estrongs/android/pop/app/editor/ae;->a(Lcom/estrongs/android/pop/app/editor/b;Ljava/io/OutputStream;IIJJ)I

    move-result v2

    invoke-virtual {v10}, Lcom/estrongs/android/pop/app/editor/b;->close()V

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_10

    const-wide/16 v5, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ai;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/estrongs/android/pop/app/editor/ai;->b(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v5, v3

    move-object/from16 v3, v19

    :goto_9
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v5, :cond_11

    :try_start_d
    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/editor/a;->d()V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/a;->d()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_13
    :goto_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_8

    :catch_2
    move-exception v2

    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_4

    :catch_3
    move-exception v2

    :try_start_11
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    :goto_b
    if-eqz v3, :cond_14

    :try_start_12
    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/a;->d()V

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_15
    if-eqz v19, :cond_16

    invoke-virtual/range {v19 .. v19}, Lcom/estrongs/android/pop/app/editor/a;->d()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_16
    :goto_c
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_17
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v2

    if-ltz v2, :cond_9

    cmp-long v9, v9, v5

    if-gtz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    array-length v9, v7

    if-ne v2, v9, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ai;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v11}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/estrongs/android/pop/app/editor/ai;->a(IJ)V

    :cond_18
    if-eqz v18, :cond_8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v9, 0x3000

    if-le v2, v9, :cond_8

    const/4 v2, 0x0

    const/16 v9, 0x1000

    invoke-virtual {v8, v2, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :catch_4
    move-exception v2

    :try_start_15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_c

    :catchall_2
    move-exception v2

    move-object/from16 v19, v5

    goto/16 :goto_b

    :catchall_3
    move-exception v2

    move-object/from16 v19, v3

    move-object v3, v5

    goto/16 :goto_b

    :catch_7
    move-exception v2

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_9

    :catch_8
    move-exception v2

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_9
.end method
