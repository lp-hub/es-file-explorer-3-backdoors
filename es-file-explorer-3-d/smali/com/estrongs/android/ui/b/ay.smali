.class Lcom/estrongs/android/ui/b/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/az;

.field final synthetic b:Lcom/estrongs/android/ui/b/av;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/av;Lcom/estrongs/android/ui/b/az;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ay;->b:Lcom/estrongs/android/ui/b/av;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ay;->a:Lcom/estrongs/android/ui/b/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ay;->a:Lcom/estrongs/android/ui/b/az;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/az;->a()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ay;->b:Lcom/estrongs/android/ui/b/av;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/av;->a(Lcom/estrongs/android/ui/b/av;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/q;->e(Ljava/util/List;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
