.class public Lcom/estrongs/android/view/ar;
.super Lcom/estrongs/android/view/an;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/view/an",
        "<",
        "Lcom/estrongs/fs/g;",
        ">;"
    }
.end annotation


# static fields
.field protected static H:Ljava/text/DateFormat;

.field private static ar:Z

.field private static av:[Lcom/estrongs/android/util/ay;

.field private static aw:[Lcom/estrongs/android/util/ay;

.field private static ax:[Lcom/estrongs/android/util/ay;

.field private static ay:[Lcom/estrongs/android/util/ay;

.field private static az:Ljava/lang/Object;


# instance fields
.field A:Lcom/estrongs/fs/d;

.field B:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field C:Lcom/estrongs/fs/b/t;

.field D:Lcom/estrongs/fs/c/a/a;

.field E:Lcom/estrongs/fs/h;

.field F:Landroid/graphics/drawable/Drawable;

.field G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field protected I:Lcom/estrongs/android/view/bs;

.field protected J:Lcom/estrongs/android/d/i;

.field protected K:Z

.field protected L:Z

.field protected M:Z

.field protected N:Z

.field protected O:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected P:Z

.field protected Q:Lcom/estrongs/fs/h;

.field protected R:Z

.field protected S:I

.field protected T:I

.field protected U:I

.field protected V:Lcom/estrongs/android/util/n;

.field protected W:Lcom/estrongs/android/util/TypedMap;

.field protected X:Z

.field protected Y:Lcom/estrongs/android/a/d;

.field protected Z:Lcom/estrongs/android/pop/d;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/fs/g;",
            "Lcom/estrongs/android/util/TypedMap;",
            ">;"
        }
    .end annotation
.end field

.field aa:J

.field protected ab:I

.field private ac:Landroid/os/Handler;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Ljava/lang/String;

.field private al:Landroid/view/View;

.field private am:Ljava/lang/String;

.field private an:Lcom/estrongs/android/ui/theme/al;

.field private ao:J

.field private ap:Z

.field private aq:Lcom/estrongs/fs/a/e;

.field private as:F

.field private at:F

.field private au:F

.field private b:Z

.field private c:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Lcom/estrongs/fs/g;

.field y:Lcom/estrongs/android/view/bt;

.field protected z:Lcom/estrongs/android/view/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/view/ar;->ar:Z

    sput-object v1, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    sput-object v1, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    sput-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    sput-object v1, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/ar;->az:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;Z)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;ZZ)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p5}, Lcom/estrongs/android/view/an;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->s:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->t:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->u:Z

    iput-object v2, p0, Lcom/estrongs/android/view/ar;->v:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    new-instance v0, Lcom/estrongs/fs/c/a/d;

    invoke-direct {v0, v4}, Lcom/estrongs/fs/c/a/d;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->K:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->L:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->M:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->N:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->a:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->P:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->c:Z

    iput-object v2, p0, Lcom/estrongs/android/view/ar;->Q:Lcom/estrongs/fs/h;

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->R:Z

    iput-object v2, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->ac:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->ah:Z

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    iput-boolean v4, p0, Lcom/estrongs/android/view/ar;->X:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->aj:Z

    iput-object v2, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    const-string v0, "all"

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->am:Ljava/lang/String;

    iput-wide v5, p0, Lcom/estrongs/android/view/ar;->ao:J

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->ap:Z

    new-instance v0, Lcom/estrongs/android/view/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/as;-><init>(Lcom/estrongs/android/view/ar;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->aq:Lcom/estrongs/fs/a/e;

    new-instance v0, Lcom/estrongs/android/view/bb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bb;-><init>(Lcom/estrongs/android/view/ar;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->Y:Lcom/estrongs/android/a/d;

    iput-wide v5, p0, Lcom/estrongs/android/view/ar;->aa:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/ar;->ab:I

    iput v3, p0, Lcom/estrongs/android/view/ar;->as:F

    iput v3, p0, Lcom/estrongs/android/view/ar;->at:F

    iput v3, p0, Lcom/estrongs/android/view/ar;->au:F

    iput-object p3, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    iput-boolean p6, p0, Lcom/estrongs/android/view/ar;->ai:Z

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->A:Lcom/estrongs/fs/d;

    iput-object p4, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->F:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->H()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/view/ar;->H:Ljava/text/DateFormat;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->an:Lcom/estrongs/android/ui/theme/al;

    iput-object p4, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->i()V

    return-void
.end method

.method private a(Landroid/widget/TextView;FLjava/lang/String;)F
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    if-eqz p1, :cond_0

    cmpg-float v0, p2, v4

    if-lez v0, :cond_0

    if-nez p3, :cond_3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, v2, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eq p3, v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    :cond_2
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/ar;->as:F

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;Landroid/widget/TextView;FLjava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/ar;->a(Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    iget-object v0, v0, Lcom/estrongs/android/widget/e;->j:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;Lcom/estrongs/fs/b/t;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/b/t;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/b/t;ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ap:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/fs/b/t;->d:Lcom/estrongs/android/pop/d;

    iget-object v1, p1, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->ap:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->u()V

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->f()Lcom/estrongs/fs/g;

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ah:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/estrongs/android/view/ar;->ah:Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    invoke-interface {v0}, Lcom/estrongs/android/view/bs;->b()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    iput-boolean v4, p0, Lcom/estrongs/android/view/ar;->ap:Z

    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Lcom/estrongs/fs/b/t;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eq v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->j()Lcom/estrongs/fs/g;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->u()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/estrongs/fs/b/t;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v1, v0, Lcom/estrongs/a/p;->a:I

    if-eq v1, v3, :cond_5

    const-string v1, "ALL_LOADED"

    iget-object v2, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->u()V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/c/a/a;)V

    :cond_9
    :goto_1
    iget-object v0, p1, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/HeaderGridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->j(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/widget/HeaderGridView;->setSelected(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setSelection(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/widget/HeaderGridView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v2, Lcom/estrongs/android/view/bh;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/bh;-><init>(Lcom/estrongs/android/view/ar;I)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v1, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/HeaderGridView;->setSelection(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/view/ar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ar;->ah:Z

    return p1
.end method

.method public static af()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/view/ar;->az:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/ar;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/ar;->at:F

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->n()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/view/ar;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/ar;->au:F

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/util/n;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->o()Lcom/estrongs/android/util/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/ar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->p()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/view/ar;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ar;->as:F

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/ar;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ar;->at:F

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/ar;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ar;->au:F

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->an:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/view/ar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->b:Z

    return v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    :cond_0
    return-void
.end method

.method private o()Lcom/estrongs/android/util/n;
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/bd;

    const-string v1, "PreIconLoader-SCROLL_STATE_IDLE"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/bd;-><init>(Lcom/estrongs/android/view/ar;Ljava/lang/String;)V

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->I:Lcom/estrongs/android/view/bs;

    invoke-interface {v0}, Lcom/estrongs/android/view/bs;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->U()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->X:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->W()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->ah:Z

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/ar;->ab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/ar;->ab:I

    :cond_0
    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->c:Z

    return v0
.end method

.method public G()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public H()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/ar;->P:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    if-ne v2, p0, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/view/ar;->P:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public I()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ai:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->aq:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->aq:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->P:Z

    :cond_0
    return-void
.end method

.method protected J()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/bq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bq;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public K()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/be;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/be;-><init>(Lcom/estrongs/android/view/ar;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    return-void
.end method

.method public L()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/view/ar;->ar:Z

    return v0
.end method

.method public M()Lcom/estrongs/fs/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    return-object v0
.end method

.method public N()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/c/a/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/c/a/f;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/c/a/e;

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/c/a/c;

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public O()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/c/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public P()Z
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Q()Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->A:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/t;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    invoke-virtual {v0}, Lcom/estrongs/android/d/i;->b()V

    :cond_1
    return-void
.end method

.method protected S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->P:Z

    return v0
.end method

.method protected V()Lcom/estrongs/android/view/bo;
    .locals 4

    new-instance v0, Lcom/estrongs/android/view/bo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bo;-><init>(Lcom/estrongs/android/view/ar;)V

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/view/bo;->b:Landroid/os/ConditionVariable;

    new-instance v1, Lcom/estrongs/fs/b/t;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->A:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/android/view/ar;->Z:Lcom/estrongs/android/pop/d;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/b/t;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/android/pop/d;)V

    new-instance v2, Lcom/estrongs/android/view/bi;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/bi;-><init>(Lcom/estrongs/android/view/ar;Lcom/estrongs/android/view/bo;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/t;->a(Lcom/estrongs/fs/b/u;)V

    new-instance v2, Lcom/estrongs/android/view/bk;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/bk;-><init>(Lcom/estrongs/android/view/ar;Lcom/estrongs/android/view/bo;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/t;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    new-instance v2, Lcom/estrongs/android/view/ax;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/ax;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/t;->addProgressListener(Lcom/estrongs/a/a/h;)V

    iput-object v1, v0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/fs/b/t;

    return-object v0
.end method

.method protected W()I
    .locals 1

    const v0, 0x7f0b006d

    return v0
.end method

.method public X()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ar;->H:Ljava/text/DateFormat;

    return-object v0
.end method

.method public Y()Lcom/estrongs/android/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    return-object v0
.end method

.method protected Z()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/HeaderGridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->l(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b035f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/estrongs/android/view/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ba;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/android/view/ar;->ao:J

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->p:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->z:Lcom/estrongs/android/view/br;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->y:Lcom/estrongs/android/view/bt;

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/t;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f0b01ec

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->u()V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->b:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/ar;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->b(Ljava/util/List;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/az;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/az;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f0b01ee

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b04b9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    goto :goto_1

    :cond_5
    const-string v0, "/files"

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0b04ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ar;->f(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/estrongs/fs/impl/k/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->t()V

    goto :goto_1

    :cond_8
    const v0, 0x7f0b0432

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    goto :goto_1

    :cond_9
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f0b01ed

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->f(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ar;->f(I)V

    goto/16 :goto_1

    :cond_b
    if-ge v0, v1, :cond_d

    :goto_3
    iput v0, p0, Lcom/estrongs/android/view/ar;->T:I

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->a()V

    :cond_c
    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->o()Lcom/estrongs/android/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/n;->setPriority(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->start()V

    sget-boolean v0, Lcom/estrongs/android/view/ar;->ar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->startLayoutAnimation()V

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto :goto_3
.end method

.method public a(Lcom/estrongs/fs/c/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/util/List;Lcom/estrongs/fs/c/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/fs/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->N:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ar;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0, v2}, Lcom/estrongs/android/util/TypedMap;-><init>(Lcom/estrongs/android/util/TypedMap;)V

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0}, Lcom/estrongs/android/util/TypedMap;->clear()V

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/TypedMap;->putAll(Ljava/util/Map;)V

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->R()V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/HeaderGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/view/ar;->X:Z

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "back"

    iget-boolean v2, p0, Lcom/estrongs/android/view/ar;->N:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->N:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, v4}, Lcom/estrongs/android/view/ar;->b(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->aj:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->aj:Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/HeaderGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->g()V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->Q:Lcom/estrongs/fs/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    invoke-static {p1}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public a(Ljava/text/DateFormat;)V
    .locals 0

    sput-object p1, Lcom/estrongs/android/view/ar;->H:Ljava/text/DateFormat;

    return-void
.end method

.method protected a(Ljava/util/List;Lcom/estrongs/fs/c/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/c/a/a;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ar;->K:Z

    iput-boolean p2, p0, Lcom/estrongs/android/view/ar;->L:Z

    return-void
.end method

.method protected a(Lcom/estrongs/android/d/k;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/estrongs/android/d/k;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    iget-object v1, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/t;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    invoke-virtual {v0}, Lcom/estrongs/android/d/i;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    invoke-virtual {v0}, Lcom/estrongs/android/d/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    :cond_1
    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->P:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ai:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->aq:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    :cond_2
    return-void
.end method

.method public aa()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "updateMediaStore"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ar;->b(Z)V

    return-void
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->am:Ljava/lang/String;

    return-object v0
.end method

.method public ac()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/ar;->ao:J

    return-wide v0
.end method

.method public ad()Landroid/view/View$OnTouchListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ae()[Lcom/estrongs/android/util/ay;
    .locals 7

    const/4 v2, 0x0

    sget-object v3, Lcom/estrongs/android/view/ar;->az:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-array v0, v1, [Lcom/estrongs/android/util/ay;

    sput-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    sget-object v5, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    new-instance v6, Lcom/estrongs/android/util/ay;

    invoke-direct {v6}, Lcom/estrongs/android/util/ay;-><init>()V

    aput-object v6, v5, v0

    sget-object v5, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/ay;->b:Z

    sget-object v5, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/ay;->d:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/m;->j:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "/"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v5, 0x7f0b038f

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x7f0200c7

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/util/ay;->d:Z

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    sget-boolean v1, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v1

    const v1, 0x7f0200c8

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/estrongs/android/view/ar;->av:[Lcom/estrongs/android/util/ay;

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method public ag()[Lcom/estrongs/android/util/ay;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    array-length v0, v2

    new-array v4, v0, [I

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const v5, 0x7f0200b9

    aput v5, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/pictures"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0200c6

    aput v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/documents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f0200bc

    aput v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/music"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const v5, 0x7f0200c0

    aput v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/videos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x7f0200cd

    aput v5, v4, v10

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/apps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const v6, 0x7f0200ba

    aput v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/others"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const v6, 0x7f0200c2

    aput v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/files/apps/Downloads/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x7

    const v5, 0x7f0200bd

    aput v5, v4, v0

    array-length v0, v2

    new-array v0, v0, [Lcom/estrongs/android/util/ay;

    sput-object v0, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    move v0, v1

    :goto_0
    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    new-instance v5, Lcom/estrongs/android/util/ay;

    invoke-direct {v5}, Lcom/estrongs/android/util/ay;-><init>()V

    aput-object v5, v1, v0

    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    aget-object v1, v1, v0

    aget-object v5, v3, v0

    iput-object v5, v1, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    aget-object v1, v1, v0

    aget-object v5, v2, v0

    iput-object v5, v1, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    aget-object v1, v1, v0

    aget v5, v4, v0

    iput v5, v1, Lcom/estrongs/android/util/ay;->f:I

    sget-object v1, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    aget-object v1, v1, v0

    iput-boolean v8, v1, Lcom/estrongs/android/util/ay;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/ar;->ax:[Lcom/estrongs/android/util/ay;

    return-object v0
.end method

.method public ah()[Lcom/estrongs/android/util/ay;
    .locals 8

    const/4 v1, 0x6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    new-array v0, v0, [Lcom/estrongs/android/util/ay;

    sput-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    move v0, v2

    :goto_1
    sget-object v3, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    new-instance v4, Lcom/estrongs/android/util/ay;

    invoke-direct {v4}, Lcom/estrongs/android/util/ay;-><init>()V

    aput-object v4, v3, v0

    sget-object v3, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v3, v3, v0

    iput-boolean v7, v3, Lcom/estrongs/android/util/ay;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v2

    const-string v3, "app://user"

    iput-object v3, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v4, 0x7f0b015f

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v2

    const v2, 0x7f0200cc

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v7

    const-string v2, "app://system"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v2, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b015e

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v7

    const v2, 0x7f0200ca

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const-string v2, "app://phone"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0369

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const v2, 0x7f0200c3

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const-string v2, "app://sdcard"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b036a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const v2, 0x7f0200c9

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v5

    const-string v2, "app://update"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b04c9

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v5

    const v2, 0x7f0200cb

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v6

    const-string v2, "app://backuped"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v2, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0163

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v6

    const v2, 0x7f0200bb

    iput v2, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v1

    const-string v2, "apk://"

    iput-object v2, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v3, 0x7f0b036b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v1

    const v1, 0x7f0200ba

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    :cond_2
    :goto_2
    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    return-object v0

    :cond_3
    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v5

    const-string v1, "app://backuped"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0163

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v5

    const v1, 0x7f0200bb

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v6

    const-string v1, "apk://"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b036b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->aw:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v6

    const v1, 0x7f0200ba

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    goto :goto_2
.end method

.method public ai()[Lcom/estrongs/android/util/ay;
    .locals 11

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v5, v4

    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_3

    new-instance v1, Lcom/estrongs/android/util/ay;

    invoke-direct {v1}, Lcom/estrongs/android/util/ay;-><init>()V

    iput-boolean v4, v1, Lcom/estrongs/android/util/ay;->b:Z

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "gallery://local/buckets/"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v8, 0x7f0b0051

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200bf

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "SP://"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v8, 0x7f0b02cf

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c1

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    if-eqz v2, :cond_4

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "pic://"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c6

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "gallery://local/buckets/"

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b02d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c4

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    move v1, v6

    :goto_3
    new-array v2, v1, [Lcom/estrongs/android/util/ay;

    :goto_4
    if-ge v3, v1, :cond_5

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->az(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_5
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "mine"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v4, 0x7f0b02d0

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c6

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "hot"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v4, 0x7f0b02d1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c5

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ah(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const-string v1, "album"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b02d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/ay;

    const v1, 0x7f0200c4

    iput v1, v0, Lcom/estrongs/android/util/ay;->f:I

    move v1, v7

    goto/16 :goto_3

    :cond_5
    return-object v2

    :cond_6
    move v1, v6

    goto/16 :goto_3

    :cond_7
    move-object v2, v0

    goto/16 :goto_5

    :cond_8
    move v1, v8

    goto/16 :goto_3
.end method

.method public aj()[Lcom/estrongs/android/util/ay;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/estrongs/android/util/ay;

    sput-object v1, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    new-instance v3, Lcom/estrongs/android/util/ay;

    invoke-direct {v3}, Lcom/estrongs/android/util/ay;-><init>()V

    aput-object v3, v0, v1

    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/android/util/ay;->b:Z

    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    aget-object v3, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "du://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    aget-object v3, v0, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, v1

    const v3, 0x7f0200c8

    iput v3, v0, Lcom/estrongs/android/util/ay;->f:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/ar;->ay:[Lcom/estrongs/android/util/ay;

    return-object v0
.end method

.method public ak()[Lcom/estrongs/android/util/ay;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->ah()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->ai()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->ag()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->aj()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->ae()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    return-object v0
.end method

.method protected b(Lcom/estrongs/android/d/k;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/d;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/d/k;->f:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p1, Lcom/estrongs/android/d/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->E:Lcom/estrongs/fs/h;

    return-void
.end method

.method public b(Z)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/utils/aa;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->q()V

    invoke-direct {p0}, Lcom/estrongs/android/view/ar;->n()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->R()V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->z:Lcom/estrongs/android/view/br;

    iget-object v3, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v9}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->V()Lcom/estrongs/android/view/bo;

    move-result-object v3

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/fs/b/t;

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    new-instance v4, Lcom/estrongs/fs/b;

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->E:Lcom/estrongs/fs/h;

    invoke-direct {v4, v0}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/h;)V

    new-instance v0, Lcom/estrongs/android/view/ae;

    iget-object v5, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/estrongs/android/view/ae;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/b;->a(Lcom/estrongs/fs/h;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->al:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aL(Ljava/lang/String;)Z

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    aput-object v0, v8, v2

    if-nez v5, :cond_5

    if-eqz v6, :cond_9

    :cond_5
    move-object v0, v1

    :goto_1
    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/estrongs/android/view/ar;->W:Lcom/estrongs/android/util/TypedMap;

    aput-object v4, v8, v0

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/b/t;->a([Ljava/lang/Object;)Z

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v1

    :cond_6
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-eqz v1, :cond_8

    if-ne v1, p0, :cond_8

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->b:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v3, Lcom/estrongs/android/view/bo;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    :cond_7
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->W()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->c(Ljava/lang/String;)V

    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/estrongs/android/view/ar;->R:Z

    iput v2, p0, Lcom/estrongs/android/view/ar;->S:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/estrongs/android/view/ar;->T:I

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->N:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/ar;->N:Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->D:Lcom/estrongs/fs/c/a/a;

    goto :goto_1

    :cond_a
    iput-boolean v2, p0, Lcom/estrongs/android/view/ar;->X:Z

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ac:Landroid/os/Handler;

    iget-object v1, v3, Lcom/estrongs/android/view/bo;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ac:Landroid/os/Handler;

    iget-object v1, v3, Lcom/estrongs/android/view/bo;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->e:Ljava/util/List;

    if-eqz v0, :cond_b

    move v1, v2

    :goto_3
    iget-object v0, v3, Lcom/estrongs/android/view/bo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v4, p0, Lcom/estrongs/android/view/ar;->ac:Landroid/os/Handler;

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/estrongs/android/view/bo;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    iget-object v0, v3, Lcom/estrongs/android/view/bo;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public b_()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->Q:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->Q:Lcom/estrongs/fs/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v2, v0}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ar;->l(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ar;->c:Z

    return-void
.end method

.method public f()Lcom/estrongs/fs/g;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->aj:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->N:Z

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    move-object v1, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->j()Lcom/estrongs/fs/g;

    move-result-object v0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->j()Lcom/estrongs/fs/g;

    move-result-object v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v2, Lcom/estrongs/android/view/bg;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/view/bg;-><init>(Lcom/estrongs/android/view/ar;I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ar;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->M:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->b(Z)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->s:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->t:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    sput-boolean p1, Lcom/estrongs/android/view/ar;->ar:Z

    sget-boolean v0, Lcom/estrongs/android/view/ar;->ar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/view/bp;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bp;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/widget/d;)V

    new-instance v0, Lcom/estrongs/android/view/bc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bc;-><init>(Lcom/estrongs/android/view/ar;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/pop/d;

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/ar;->Y:Lcom/estrongs/android/a/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/d;-><init>(Landroid/app/Activity;Lcom/estrongs/android/a/d;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ar;->Z:Lcom/estrongs/android/pop/d;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->J()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->K()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ai:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->aq:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->w()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->h(Z)V

    return-void
.end method

.method protected i(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/ar;->S:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/view/ar;->T:I

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/view/ar;->S:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Lcom/estrongs/android/view/ar;->S:I

    iget v0, p0, Lcom/estrongs/android/view/ar;->U:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/estrongs/android/view/ar;->T:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/view/ar;->T:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/estrongs/android/view/ar;->T:I

    iget v0, p0, Lcom/estrongs/android/view/ar;->T:I

    iget v1, p0, Lcom/estrongs/android/view/ar;->U:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/ar;->S:I

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->u:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ar;->M:Z

    return-void
.end method

.method protected j(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->B:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/android/util/ak;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public j()Lcom/estrongs/fs/g;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->aj:Z

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    if-nez v1, :cond_4

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->O:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->f()Lcom/estrongs/fs/g;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/ar;->x:Lcom/estrongs/fs/g;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/estrongs/android/pop/m;->j:Z

    if-eqz v2, :cond_7

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    new-instance v0, Lcom/estrongs/fs/m;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;)V

    goto :goto_0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/ar;->ab:I

    return-void
.end method

.method public j(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/ar;->a(ZZ)V

    return-void
.end method

.method protected k(I)Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->am:Ljava/lang/String;

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->L:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ar;->b(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->K:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/ar;->L:Z

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->ah:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/view/ar;->X:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->s()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/ar;->g()V

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/t;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->C:Lcom/estrongs/fs/b/t;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/t;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/an;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ar;->X:Z

    return-void
.end method
