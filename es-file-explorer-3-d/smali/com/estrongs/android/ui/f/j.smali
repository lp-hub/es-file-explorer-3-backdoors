.class Lcom/estrongs/android/ui/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bn;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/f/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/j;->b:Lcom/estrongs/android/ui/f/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/j;->a:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/j;->b:Lcom/estrongs/android/ui/f/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/j;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    return-void
.end method
