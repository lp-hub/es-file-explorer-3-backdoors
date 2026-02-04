.class Lcom/estrongs/android/ui/b/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ag;

.field final synthetic b:Lcom/estrongs/android/ui/b/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/b/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ea;->b:Lcom/estrongs/android/ui/b/dn;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/ea;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ea;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
