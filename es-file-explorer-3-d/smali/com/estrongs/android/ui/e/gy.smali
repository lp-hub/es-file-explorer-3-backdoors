.class public Lcom/estrongs/android/ui/e/gy;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/gu;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/e/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gy;->a:Lcom/estrongs/android/ui/e/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/gy;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/gy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gy;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/gy;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gy;->c:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/gy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gy;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/gy;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gy;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
