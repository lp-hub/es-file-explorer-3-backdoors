.class public Lcom/estrongs/android/ui/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/c/q;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/q;

    new-instance v0, Lcom/estrongs/android/ui/c/q;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/c/q;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/q;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/q;->an()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    const v0, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/c/e;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/c/e;-><init>(Lcom/estrongs/android/ui/c/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/q;

    iput-object v0, v1, Lcom/estrongs/android/ui/c/q;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method
