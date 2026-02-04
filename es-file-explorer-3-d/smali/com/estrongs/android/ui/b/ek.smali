.class Lcom/estrongs/android/ui/b/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ei;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ek;->a:Lcom/estrongs/android/ui/b/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ek;->a:Lcom/estrongs/android/ui/b/ei;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ei;->dismiss()V

    return-void
.end method
