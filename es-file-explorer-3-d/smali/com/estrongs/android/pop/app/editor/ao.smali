.class Lcom/estrongs/android/pop/app/editor/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ao;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ao;->a:Lcom/estrongs/android/pop/app/editor/an;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ao;->a:Lcom/estrongs/android/pop/app/editor/an;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/an;->a(Lcom/estrongs/android/pop/app/editor/an;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/an;->a(Lcom/estrongs/android/pop/app/editor/an;I)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
