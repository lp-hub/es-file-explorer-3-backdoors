.class Lcom/estrongs/android/pop/app/editor/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ap;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ap;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/an;->b(Lcom/estrongs/android/pop/app/editor/an;)Lcom/estrongs/android/pop/app/editor/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ap;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/an;->b(Lcom/estrongs/android/pop/app/editor/an;)Lcom/estrongs/android/pop/app/editor/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ap;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/an;->a(Lcom/estrongs/android/pop/app/editor/an;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/editor/ar;->a(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
