.class Lcom/estrongs/android/ui/a/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ai;

.field final synthetic b:Lcom/estrongs/android/ui/a/ci;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ci;Lcom/estrongs/android/ui/theme/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cn;->b:Lcom/estrongs/android/ui/a/ci;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/cn;->a:Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cn;->a:Lcom/estrongs/android/ui/theme/ai;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cn;->b:Lcom/estrongs/android/ui/a/ci;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/ci;->a(Lcom/estrongs/android/ui/a/ci;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/cn;->b:Lcom/estrongs/android/ui/a/ci;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/ci;->b(Lcom/estrongs/android/ui/a/ci;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/ai;->b(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method
