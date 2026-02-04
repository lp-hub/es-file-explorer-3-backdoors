.class Lcom/estrongs/android/pop/app/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/v;->a:Lcom/estrongs/android/pop/app/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
