.class Lcom/estrongs/android/pop/app/b/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/pop/app/b/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/w;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/ab;->c:Lcom/estrongs/android/pop/app/b/w;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/ab;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/ab;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/ab;->c:Lcom/estrongs/android/pop/app/b/w;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/b/w;->j:Lcom/estrongs/android/pop/app/b/q;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/q;->e(Lcom/estrongs/android/pop/app/b/q;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/ab;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/ab;->c:Lcom/estrongs/android/pop/app/b/w;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/w;->b(Lcom/estrongs/android/pop/app/b/w;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/b/ac;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/b/ac;-><init>(Lcom/estrongs/android/pop/app/b/ab;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method
