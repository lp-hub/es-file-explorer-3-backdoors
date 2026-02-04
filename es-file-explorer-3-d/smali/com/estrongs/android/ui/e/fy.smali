.class public Lcom/estrongs/android/ui/e/fy;
.super Lcom/estrongs/android/ui/e/gq;


# instance fields
.field private g:Lcom/estrongs/android/ui/view/az;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/az;Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/fy;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fy;->g:Lcom/estrongs/android/ui/view/az;

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fy;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fy;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0014

    const v2, 0x7f020242

    new-instance v3, Lcom/estrongs/android/ui/e/fz;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/fz;-><init>(Lcom/estrongs/android/ui/e/fy;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/fy;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b001c

    const v2, 0x7f02026b

    new-instance v3, Lcom/estrongs/android/ui/e/ga;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/ga;-><init>(Lcom/estrongs/android/ui/e/fy;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/fy;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b0007

    const v2, 0x7f02023b

    new-instance v3, Lcom/estrongs/android/ui/e/gb;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/gb;-><init>(Lcom/estrongs/android/ui/e/fy;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/fy;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/fy;->h:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need FileExplorerActivity as the first argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/fy;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/fy;->k()V

    :cond_0
    return-void
.end method
