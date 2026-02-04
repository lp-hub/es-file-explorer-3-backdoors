.class public Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
.super Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private final F:Ljava/lang/Runnable;

.field private G:Lcom/estrongs/android/pop/app/imageviewer/a;

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private J:I

.field private K:Lcom/estrongs/android/pop/app/imageviewer/o;

.field a:Z

.field final b:Lcom/estrongs/android/pop/app/imageviewer/n;

.field protected c:I

.field protected d:Z

.field e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field f:Landroid/view/GestureDetector;

.field protected g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

.field protected h:Landroid/widget/ImageView;

.field protected i:Lcom/estrongs/android/widget/RealViewSwitcher;

.field protected j:Landroid/view/LayoutInflater;

.field protected k:Landroid/util/DisplayMetrics;

.field protected l:Ljava/lang/Runnable;

.field m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

.field n:Landroid/view/animation/Animation;

.field o:Landroid/view/animation/Animation;

.field protected p:J

.field protected q:Landroid/view/ViewGroup$LayoutParams;

.field private r:Lcom/estrongs/android/pop/app/imageviewer/r;

.field private s:Landroid/net/Uri;

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Landroid/content/SharedPreferences;

.field private x:Lcom/estrongs/fs/b;

.field private y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/n;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/n;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    iput v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/x;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/x;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Lcom/estrongs/fs/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/aq;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bn;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bi;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bj;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    const/16 v0, 0x320

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:J

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;
    .locals 5

    const/4 v2, 0x1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->p(Ljava/lang/String;)Lcom/estrongs/fs/c/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/c/a/d;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/c/a/d;-><init>(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Lcom/estrongs/fs/b;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/fs/c/a/a;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/o;)Lcom/estrongs/android/pop/app/imageviewer/o;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e()V

    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    return v0
.end method

.method private e(I)Lcom/estrongs/android/pop/app/imageviewer/al;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/a;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/al;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/al;->g()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/a;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    return-object v0
.end method

.method private g()V
    .locals 5

    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ac;->a(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/ax;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/ax;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02028f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0361

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/ay;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/ay;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0289

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/az;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/az;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0b0259

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/ba;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bb;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b02b4

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bc;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private g(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    return-object v0
.end method

.method private i()Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    return-object v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/be;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/widget/ImageView;

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bf;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b0259

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f07000b

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/bh;

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/app/imageviewer/bh;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0039

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bg;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bg;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    return-object v0
.end method

.method private m()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/a;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:I

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/n;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    rem-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/b/a;->stop()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/b/a;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load-sucess::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load-error::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/bu;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/ViewGroup;)Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/bu;)V

    goto :goto_0
.end method

.method protected a(ILcom/estrongs/android/pop/app/imageviewer/bu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/bu;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(ILcom/estrongs/android/pop/app/imageviewer/bu;Ljava/lang/Runnable;)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e(I)Lcom/estrongs/android/pop/app/imageviewer/al;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/al;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bp;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/bp;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;ILcom/estrongs/android/pop/app/imageviewer/bu;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/t;I)V

    goto :goto_0
.end method

.method a(IZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    if-le p1, v0, :cond_f

    add-int/lit8 v0, v4, -0x2

    :goto_0
    if-gez v0, :cond_e

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(I)V

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    add-int/lit8 v5, v1, -0x6

    add-int/lit8 v6, v1, 0xa

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(II)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v5

    sub-float/2addr v0, v5

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f(I)V

    if-ne v4, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(Z)V

    :goto_3
    rem-int/lit8 v4, v1, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    if-nez v0, :cond_6

    :goto_4
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v6, v1, 0x6

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(II)V

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(Z)V

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(Z)V

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/estrongs/android/pop/app/imageviewer/bu;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iput-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v5, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load-sucess::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load-error::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :goto_5
    invoke-static {v5}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v6

    const v7, 0x10013

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-nez v6, :cond_c

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/al;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/app/imageviewer/al;->a(I)V

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-direct {v2, p0, v5, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/bo;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;Lcom/estrongs/android/pop/app/imageviewer/bu;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/b/a;->stop()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_6
    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/b/a;)V

    invoke-virtual {v2}, Lcom/estrongs/android/b/a;->start()V

    :cond_8
    :goto_7
    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    :cond_a
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    goto/16 :goto_4

    :cond_b
    move v3, v2

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/bu;)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/bu;)V

    goto :goto_7

    :catch_0
    move-exception v3

    goto :goto_6

    :cond_e
    move v1, v0

    goto/16 :goto_1

    :cond_f
    move v0, p1

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bv;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f:Landroid/view/GestureDetector;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bd;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bl;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/bl;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:J

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/n;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/n;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(I)V
    .locals 4

    const/16 v3, 0x400

    const/16 v2, 0x80

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->setAnimateFirstView(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setAnimateFirstView(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1ea
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080236
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, 0xbb8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Landroid/content/SharedPreferences;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Landroid/content/SharedPreferences;

    const-string v1, "slide_setting_interval"

    const-wide/16 v5, 0xbb8

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->setContentView(I)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v0, 0x96

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    if-nez v1, :cond_2

    const-string v1, "pic://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    :cond_2
    const-string v1, "file"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Lcom/estrongs/fs/b;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/h;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Lcom/estrongs/fs/b;

    const v2, 0x7fffffff

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "show_hidelist_file"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Lcom/estrongs/android/view/ae;

    invoke-direct {v6, v1, v2}, Lcom/estrongs/android/view/ae;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Lcom/estrongs/fs/b;

    invoke-virtual {v1, v6}, Lcom/estrongs/fs/b;->a(Lcom/estrongs/fs/h;)V

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/av;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    :try_start_2
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_4
    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/br;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/br;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->a(Lcom/estrongs/android/pop/app/imageviewer/m;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setCallbackDuringFling(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setUnselectedAlpha(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bs;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bt;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080230

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ar;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Lcom/estrongs/android/widget/av;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/View;)V

    const v0, 0x7f080233

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Landroid/widget/TextView;

    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080234

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Landroid/widget/TextView;

    const v0, 0x7f080235

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/as;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    :cond_8
    move v0, v3

    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bu;

    invoke-direct {v1, p0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bu;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/bu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    iput-wide v7, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:J

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_b
    :try_start_3
    new-instance v2, Lcom/estrongs/android/pop/utils/bv;

    invoke-direct {v2}, Lcom/estrongs/android/pop/utils/bv;-><init>()V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/utils/bv;->a()V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/fs/l;->a()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/av;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    move v0, v4

    :goto_7
    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0255

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_8
    return-void

    :cond_d
    invoke-virtual {v2}, Lcom/estrongs/android/pop/utils/bv;->b()V
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Z

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    if-nez v0, :cond_12

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/at;

    const-string v1, "Image Loader - Full Size "

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/at;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    :cond_12
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/au;

    const-string v1, "ImageListBuilder"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/au;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/au;->start()V

    goto :goto_8

    :catch_2
    move-exception v6

    goto/16 :goto_3

    :cond_13
    move v0, v3

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/n;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/n;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/b/a;->stop()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a(Lcom/estrongs/android/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->a()[I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->b()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Lcom/estrongs/android/pop/app/imageviewer/r;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/a;->a()V

    :cond_6
    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k()V

    goto :goto_1

    :sswitch_1
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onPause()V

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    rem-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/b/a;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onResume()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slide_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bk;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    rem-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bu;->a()Lcom/estrongs/android/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/b/a;->start()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :try_start_0
    const-string v0, "uri"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "slideshow"

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
