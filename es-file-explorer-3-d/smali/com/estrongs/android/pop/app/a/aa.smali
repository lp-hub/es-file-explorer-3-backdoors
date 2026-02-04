.class Lcom/estrongs/android/pop/app/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;

.field final synthetic b:Lcom/estrongs/android/pop/app/a/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/x;Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/aa;->b:Lcom/estrongs/android/pop/app/a/x;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/aa;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
