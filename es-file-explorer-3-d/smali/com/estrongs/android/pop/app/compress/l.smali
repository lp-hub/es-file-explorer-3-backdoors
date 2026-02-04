.class public Lcom/estrongs/android/pop/app/compress/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/content/DialogInterface$OnDismissListener;

.field private C:Lcom/estrongs/android/pop/app/compress/am;

.field b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/estrongs/android/ui/b/ag;

.field private e:Lcom/estrongs/io/archive/d;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Lcom/estrongs/io/a/a/a;

.field private o:Lcom/estrongs/android/ui/b/ag;

.field private p:Lcom/estrongs/android/pop/app/compress/as;

.field private q:Landroid/os/HandlerThread;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Lcom/estrongs/io/archive/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/compress/l;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->f:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->q:Landroid/os/HandlerThread;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/compress/l;->r:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/compress/l;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/compress/l;->y:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/compress/l;->b:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/l;->v:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/compress/l;->w:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/app/compress/l;->x:Ljava/util/List;

    iput-boolean p7, p0, Lcom/estrongs/android/pop/app/compress/l;->r:Z

    iput p9, p0, Lcom/estrongs/android/pop/app/compress/l;->y:I

    iput-object p5, p0, Lcom/estrongs/android/pop/app/compress/l;->A:Ljava/lang/String;

    iput-object p10, p0, Lcom/estrongs/android/pop/app/compress/l;->B:Landroid/content/DialogInterface$OnDismissListener;

    iput-boolean p8, p0, Lcom/estrongs/android/pop/app/compress/l;->s:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/l;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->n:Lcom/estrongs/io/a/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/l;Lcom/estrongs/io/archive/h;)Lcom/estrongs/io/archive/h;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/l;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/pop/app/compress/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/n;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/m;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->d:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->d:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/o;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->B:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->d:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->B:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    const v2, 0x7f0b0312

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    const v2, 0x7f0b038e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->l:Landroid/widget/TextView;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/compress/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/estrongs/android/pop/app/compress/p;-><init>(Lcom/estrongs/android/pop/app/compress/l;Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->c(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->d(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->e(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->f(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->w:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/compress/q;-><init>(Lcom/estrongs/android/pop/app/compress/l;Lcom/estrongs/io/archive/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->n:Lcom/estrongs/io/a/a/a;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/l;->e()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/l;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->m:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/app/compress/l;->a:Z

    new-instance v0, Lcom/estrongs/android/pop/app/compress/x;

    const-string v1, "ArchiveExtract"

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/compress/x;-><init>(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->q:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->t:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/compress/l;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/as;->show()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/as;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/l;->f()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/compress/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/l;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->C:Lcom/estrongs/android/pop/app/compress/am;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->e:Lcom/estrongs/io/archive/d;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/l;->e()V

    return-void
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/compress/l;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/compress/l;->y:I

    return v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->w:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/compress/as;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/as;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/v;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/v;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/as;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->p:Lcom/estrongs/android/pop/app/compress/as;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/w;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/w;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/as;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/compress/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/l;->C:Lcom/estrongs/android/pop/app/compress/am;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/t;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/t;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/u;-><init>(Lcom/estrongs/android/pop/app/compress/l;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->o:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/l;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->d:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->q:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/compress/l;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->n:Lcom/estrongs/io/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->n:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->n:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->z:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->d()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/l;->d:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
