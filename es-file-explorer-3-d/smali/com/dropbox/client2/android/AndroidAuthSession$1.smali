.class Lcom/dropbox/client2/android/AndroidAuthSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dropbox/client2/android/AndroidAuthSession;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/android/AndroidAuthSession;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/client2/android/AndroidAuthSession$1;->this$0:Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
