.class Lcom/estrongs/android/pop/app/compress/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->d(Lcom/estrongs/android/pop/app/compress/z;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->m(Lcom/estrongs/android/pop/app/compress/z;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->n(Lcom/estrongs/android/pop/app/compress/z;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/ak;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/ak;-><init>(Lcom/estrongs/android/pop/app/compress/ah;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/pop/app/compress/aj;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/aj;-><init>(Lcom/estrongs/android/pop/app/compress/ah;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/ai;-><init>(Lcom/estrongs/android/pop/app/compress/ah;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method
