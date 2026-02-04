.class Lcom/estrongs/android/pop/utils/bg;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/fs/b/w;

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/utils/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/bg;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->al(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    invoke-virtual {v2, v4}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SP://:@pcs"

    check-cast v0, Lcom/estrongs/fs/impl/l/b;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/l/b;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/l/b;->setAbsolutePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b0446

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/l/b;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bg;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/utils/bg;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/android/view/ar;",
            "Lcom/estrongs/a/a/k;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/android/view/ar;",
            "Lcom/estrongs/a/a/k;",
            "Lcom/estrongs/android/pop/utils/br;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bg;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/ar;Lcom/estrongs/a/a/k;Lcom/estrongs/android/pop/utils/br;ILjava/lang/String;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/android/view/ar;",
            "Lcom/estrongs/a/a/k;",
            "Lcom/estrongs/android/pop/utils/br;",
            "I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/estrongs/android/ui/b/aq;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b04a3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b0006

    new-instance v4, Lcom/estrongs/android/pop/utils/bh;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/bh;-><init>(Lcom/estrongs/android/pop/utils/bg;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez p4, :cond_1f

    new-instance v2, Lcom/estrongs/android/pop/utils/bi;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bi;-><init>(Lcom/estrongs/android/pop/utils/bg;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V

    move-object v12, v2

    :goto_2
    invoke-static {v7}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v5

    const/4 v2, 0x0

    if-eqz v5, :cond_8

    const/4 v3, 0x0

    move v4, v2

    move v11, v3

    :goto_3
    if-eqz v5, :cond_c

    invoke-static {v7}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v3, 0x0

    if-nez v5, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_10

    if-nez v11, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->a()Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b01b5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    invoke-static {v7, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f0b00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    :goto_5
    if-eqz v8, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f0b04a4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030028

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;

    const v2, 0x102000b

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-nez p6, :cond_3

    if-eqz v11, :cond_15

    const v2, 0x7f0b042e

    move/from16 p6, v2

    :cond_3
    :goto_6
    if-eqz p7, :cond_1d

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    const/4 v2, 0x0

    move v15, v2

    :goto_7
    if-nez v5, :cond_1b

    const v2, 0x7f0800ee

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    const v2, 0x7f0800ef

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v11, :cond_5

    const v3, 0x7f0b0435

    sget v6, Lcom/estrongs/android/pop/utils/by;->d:I

    if-ne v4, v6, :cond_17

    const v3, 0x7f0b0436

    :cond_4
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_9
    new-instance v2, Lcom/estrongs/android/ui/b/aq;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v16

    const v17, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/pop/utils/bl;

    move-object/from16 v3, p0

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v12}, Lcom/estrongs/android/pop/utils/bl;-><init>(Lcom/estrongs/android/pop/utils/bg;ZLjava/util/List;Lcom/estrongs/android/pop/utils/br;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/pop/esclasses/ESActivity;ZZZLcom/estrongs/a/a/k;)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b0007

    new-instance v4, Lcom/estrongs/android/pop/utils/bk;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/bk;-><init>(Lcom/estrongs/android/pop/utils/bg;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v2

    if-nez v11, :cond_6

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->getConfirmButton()Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    :cond_6
    if-eqz v15, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b00f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b005f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->show()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/fs/b/w;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/b/w;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    new-instance v2, Lcom/estrongs/android/pop/utils/bn;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bn;-><init>(Lcom/estrongs/android/pop/utils/bg;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Lcom/estrongs/fs/b/w;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    new-instance v2, Lcom/estrongs/android/pop/utils/bp;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bp;-><init>(Lcom/estrongs/android/pop/utils/bg;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Lcom/estrongs/fs/b/w;->addProgressListener(Lcom/estrongs/a/a/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->a:Lcom/estrongs/fs/b/w;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/w;->execute()V

    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    if-nez p8, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/q;->aD()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/by;->a(Ljava/lang/String;)I

    move-result v2

    sget v6, Lcom/estrongs/android/pop/utils/by;->c:I

    if-eq v2, v6, :cond_9

    const/4 v3, 0x0

    :cond_a
    move v4, v2

    move v11, v3

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x0

    move v4, v2

    move v11, v3

    goto/16 :goto_3

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_d
    const v2, 0x7f0b0251

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->a()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b043e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    invoke-static {v7, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f0b00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_f
    const v2, 0x7f0b043f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v10, 0x1

    if-nez v11, :cond_11

    const v2, 0x7f0b0252

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    const/4 v2, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_11
    const v2, 0x7f0b0440

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    const/4 v2, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->az(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    const v3, 0x7f0b0368

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    move v3, v2

    goto/16 :goto_5

    :cond_13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_14

    const v2, 0x7f0b01b5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_14
    const v2, 0x7f0b0252

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    const/4 v2, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_15
    if-eqz v3, :cond_16

    const v2, 0x7f0b0367

    :goto_b
    move/from16 p6, v2

    goto/16 :goto_6

    :cond_16
    const v2, 0x7f0b042d

    goto :goto_b

    :cond_17
    sget v6, Lcom/estrongs/android/pop/utils/by;->e:I

    if-ne v4, v6, :cond_18

    const v3, 0x7f0b0437

    goto/16 :goto_8

    :cond_18
    sget v6, Lcom/estrongs/android/pop/utils/by;->f:I

    if-ne v4, v6, :cond_19

    const v3, 0x7f0b0438

    goto/16 :goto_8

    :cond_19
    sget v6, Lcom/estrongs/android/pop/utils/by;->g:I

    if-ne v4, v6, :cond_1a

    const v3, 0x7f0b0439

    goto/16 :goto_8

    :cond_1a
    sget v6, Lcom/estrongs/android/pop/utils/by;->h:I

    if-ne v4, v6, :cond_4

    const v3, 0x7f0b0439

    goto/16 :goto_8

    :cond_1b
    const v2, 0x7f0800ee

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b043b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/bg;->b:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto/16 :goto_a

    :cond_1d
    move v15, v10

    goto/16 :goto_7

    :cond_1e
    move v4, v2

    move v11, v3

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v12, p4

    goto/16 :goto_2
.end method
