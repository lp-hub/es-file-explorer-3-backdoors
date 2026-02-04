.class Lcom/estrongs/android/ui/b/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fn;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fn;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/notification/e;->b(J)Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fn;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->dismiss()V

    return-void
.end method
