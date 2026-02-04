.class public Lcom/estrongs/android/pop/app/b/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/b/ag;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TableLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/estrongs/android/pop/app/b/p;

.field private h:Lcom/estrongs/android/pop/app/b/p;

.field private i:Landroid/content/Intent;

.field private j:Lcom/estrongs/android/pop/app/b/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->e:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->f:Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/b/p;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/p;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->g:Lcom/estrongs/android/pop/app/b/p;

    new-instance v0, Lcom/estrongs/android/pop/app/b/p;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/p;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->h:Lcom/estrongs/android/pop/app/b/p;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/q;->i:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/q;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/b/v;-><init>(Lcom/estrongs/android/pop/app/b/q;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/estrongs/android/util/q;->c:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/b/q;)Lcom/estrongs/android/pop/app/b/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->g:Lcom/estrongs/android/pop/app/b/p;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->d:Landroid/widget/TableLayout;

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->d:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/pop/app/b/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/s;-><init>(Lcom/estrongs/android/pop/app/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/pop/app/b/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/r;-><init>(Lcom/estrongs/android/pop/app/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/q;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/q;->d()V

    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_2

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/b/q;)Lcom/estrongs/android/pop/app/b/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->h:Lcom/estrongs/android/pop/app/b/p;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/q;->e()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_WORKING_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    const v2, 0x7f0b0203

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/b/q;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/b/q;->b(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/b/q;->c(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/fs/l;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/b/q;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/q;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    const v4, 0x7f070009

    const v3, 0x7f070008

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->d:Landroid/widget/TableLayout;

    const v1, 0x7f08033e

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->d:Landroid/widget/TableLayout;

    const v1, 0x7f080342

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/t;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->e:Landroid/widget/Button;

    const v2, 0x7f0b010a

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/estrongs/android/pop/app/b/t;-><init>(Lcom/estrongs/android/pop/app/b/q;Landroid/widget/Button;II)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/u;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/q;->f:Landroid/widget/Button;

    const v2, 0x7f0b010b

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/estrongs/android/pop/app/b/u;-><init>(Lcom/estrongs/android/pop/app/b/q;Landroid/widget/Button;II)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/b/q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->i:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/b/ag;)Lcom/estrongs/android/pop/app/b/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/q;->j:Lcom/estrongs/android/pop/app/b/ag;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->j:Lcom/estrongs/android/pop/app/b/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->j:Lcom/estrongs/android/pop/app/b/ag;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/b/ag;->a(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/q;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
