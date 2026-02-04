.class public Lcom/estrongs/android/widget/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field protected e:Lcom/estrongs/fs/k;

.field protected final f:Lcom/estrongs/fs/l;

.field protected final g:Lcom/estrongs/fs/l;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/estrongs/android/view/ar;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/estrongs/fs/g;

.field private p:Lcom/estrongs/fs/c/a/a;

.field private q:I

.field private r:Landroid/app/Activity;

.field private s:Lcom/estrongs/android/ui/b/ag;

.field private t:Lcom/estrongs/android/ui/theme/al;

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/estrongs/android/widget/g;->a:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->p:Lcom/estrongs/fs/c/a/a;

    iput v3, p0, Lcom/estrongs/android/widget/g;->q:I

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->u:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/widget/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/h;-><init>(Lcom/estrongs/android/widget/g;)V

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->e:Lcom/estrongs/fs/k;

    new-instance v1, Lcom/estrongs/fs/l;

    const-string v2, "phone-mnt-folder"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->f:Lcom/estrongs/fs/l;

    new-instance v1, Lcom/estrongs/fs/l;

    const-string v2, "usb-mnt-folder"

    invoke-direct {v1, v2, v4}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->g:Lcom/estrongs/fs/l;

    iput-boolean v3, p0, Lcom/estrongs/android/widget/g;->v:Z

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    iget v1, p0, Lcom/estrongs/android/widget/g;->q:I

    or-int/2addr v1, p4

    iput v1, p0, Lcom/estrongs/android/widget/g;->q:I

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->t:Lcom/estrongs/android/ui/theme/al;

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v1, p1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/estrongs/android/widget/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/n;-><init>(Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->s()Z

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->f:Lcom/estrongs/fs/l;

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->g:Lcom/estrongs/fs/l;

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v1, "storage"

    iget-object v2, p0, Lcom/estrongs/android/widget/g;->e:Lcom/estrongs/fs/k;

    invoke-static {v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/j;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/g;->a(Landroid/content/Context;)V

    instance-of v1, p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Y()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/widget/g;->a:Z

    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/fs/h;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/g;->k()V

    sget-boolean v1, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/q;->p(Ljava/lang/String;)Lcom/estrongs/fs/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->p:Lcom/estrongs/fs/c/a/a;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->p:Lcom/estrongs/fs/c/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/c/a/a;)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    :goto_1
    iput-object p2, p0, Lcom/estrongs/android/widget/g;->u:Ljava/lang/String;

    return-void

    :cond_2
    instance-of v1, p1, Lcom/estrongs/android/pop/app/FileChooserActivity;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/widget/g;->a:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;ZZ)V
    .locals 1

    invoke-static {p4, p5}, Lcom/estrongs/android/widget/g;->a(ZZ)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;I)V

    return-void
.end method

.method private static a(ZZ)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0xe

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/g;Lcom/estrongs/fs/c/a/a;)Lcom/estrongs/fs/c/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->p:Lcom/estrongs/fs/c/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/g;Lcom/estrongs/fs/g;)Lcom/estrongs/fs/g;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->o:Lcom/estrongs/fs/g;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/ar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/g;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/widget/j;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/widget/j;-><init>(Lcom/estrongs/android/widget/g;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/j;->start()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/widget/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/widget/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/widget/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->o:Lcom/estrongs/fs/g;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/widget/g;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/widget/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/widget/g;)Lcom/estrongs/fs/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->p:Lcom/estrongs/fs/c/a/a;

    return-object v0
.end method

.method private k()V
    .locals 5

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/widget/y;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/y;-><init>(Lcom/estrongs/android/widget/g;)V

    iget-object v3, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/g;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v3, p0, Lcom/estrongs/android/widget/g;->q:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    const-string v4, "smb"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/y;->a(Lcom/estrongs/android/pop/q;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    const-string v4, "ftp"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/y;->a(Lcom/estrongs/android/pop/q;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    const-string v4, "kanbox"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/y;->a(Lcom/estrongs/android/pop/q;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/widget/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/l;-><init>(Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/estrongs/fs/g;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->g()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/g;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/estrongs/android/widget/g;->q:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/g;->k()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    const-string v1, "File Browser"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    const v1, 0x7f08019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f020174

    const v3, 0x7f02017e

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->k:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/u;-><init>(Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/widget/i;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/i;-><init>(Lcom/estrongs/android/widget/g;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/bt;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/bt;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    if-nez v0, :cond_1

    new-instance v5, Lcom/estrongs/android/widget/o;

    invoke-direct {v5, p0}, Lcom/estrongs/android/widget/o;-><init>(Lcom/estrongs/android/widget/g;)V

    new-instance v0, Lcom/estrongs/android/widget/p;

    iget-object v2, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/widget/g;->n:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/widget/p;-><init>(Lcom/estrongs/android/widget/g;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;Z)V

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->i(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    new-instance v1, Lcom/estrongs/android/widget/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/t;-><init>(Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/br;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->t:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->j(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/fs/h;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/v;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/v;-><init>(Lcom/estrongs/android/widget/g;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/g;->v:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->i(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storage:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/c/a/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->j()Lcom/estrongs/fs/g;

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/w;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/w;-><init>(Lcom/estrongs/android/widget/g;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->m:Landroid/view/View;

    const v1, 0x7f02018d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->m:Landroid/view/View;

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "storage://"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/g;->o:Lcom/estrongs/fs/g;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/g;->b(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/g;->d:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/x;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/x;-><init>(Lcom/estrongs/android/widget/g;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/b/ag;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public c(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/g;->a:Z

    return p1
.end method

.method public d()Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->b()Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget v0, p0, Lcom/estrongs/android/widget/g;->q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/estrongs/android/pop/m;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/ao;

    iget-object v1, p0, Lcom/estrongs/android/widget/g;->f:Lcom/estrongs/fs/l;

    const-string v2, "/"

    iget-object v6, p0, Lcom/estrongs/android/widget/g;->r:Landroid/app/Activity;

    const v7, 0x7f0b04e6

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v2, v6}, Lcom/estrongs/android/widget/ao;-><init>(Lcom/estrongs/fs/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/g;->q:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/ao;

    iget-object v2, p0, Lcom/estrongs/android/widget/g;->g:Lcom/estrongs/fs/l;

    invoke-direct {v1, v2, v4, v0}, Lcom/estrongs/android/widget/ao;-><init>(Lcom/estrongs/fs/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/g;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_2
    new-instance v6, Lcom/estrongs/android/widget/ao;

    iget-object v7, p0, Lcom/estrongs/android/widget/g;->g:Lcom/estrongs/fs/l;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v7, v0, v2}, Lcom/estrongs/android/widget/ao;-><init>(Lcom/estrongs/fs/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v5

    :cond_4
    move-object v2, v0

    goto :goto_2
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/widget/g;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/g;->l()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/g;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    const-string v1, "storage://"

    iget-object v2, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v2}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/g;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->j:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->I()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

.method public j()Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->s:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method
