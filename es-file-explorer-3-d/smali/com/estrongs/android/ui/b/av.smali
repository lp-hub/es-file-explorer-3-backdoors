.class public Lcom/estrongs/android/ui/b/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/b/av;->e:I

    iput-object p1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/av;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/av;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/av;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    new-instance v1, Lcom/estrongs/android/ui/b/az;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/b/az;-><init>(Lcom/estrongs/android/ui/b/av;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/estrongs/android/ui/b/aw;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/b/aw;-><init>(Lcom/estrongs/android/ui/b/av;Lcom/estrongs/android/ui/b/az;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/estrongs/android/ui/b/aq;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0351

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/ui/b/ay;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/ui/b/ay;-><init>(Lcom/estrongs/android/ui/b/av;Lcom/estrongs/android/ui/b/az;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/b/ax;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/ax;-><init>(Lcom/estrongs/android/ui/b/av;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/av;->a:Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 8

    const v7, 0x7f0b00a3

    const v6, 0x7f0b0050

    const v5, 0x7f0b004f

    const/4 v3, 0x2

    const v4, 0x7f0b030d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b0446

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->b:Landroid/content/Context;

    const v2, 0x7f0b0379

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    sget-boolean v1, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-boolean v1, Lcom/estrongs/android/pop/m;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v1, Lcom/estrongs/android/pop/m;->f:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-virtual {v2, v7}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v1, Lcom/estrongs/android/pop/m;->O:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    const v3, 0x7f0b0379

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v1, Lcom/estrongs/android/pop/m;->P:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/estrongs/android/pop/m;->R:Z

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    const v3, 0x7f0b0446

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v1, Lcom/estrongs/android/pop/m;->Z:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->c:Ljava/util/List;

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "#home#"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->j:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "/"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "gallery://local/buckets/"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "music://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "video://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "book://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "Download"

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/b/av;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "smb://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->P:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "net://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/estrongs/android/pop/m;->R:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "pcs://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "ftp://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/estrongs/android/pop/m;->d:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "bt://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v1, Lcom/estrongs/android/pop/m;->f:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v2, "app://"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "du://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/pop/m;->Z:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v1, "remote://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-boolean v0, Lcom/estrongs/android/pop/m;->O:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->d:Ljava/util/List;

    const-string v1, "download://"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/av;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/av;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/b/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
