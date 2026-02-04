.class public interface abstract Lcom/estrongs/a/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/a/b/l",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/estrongs/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/a/b/q;

    invoke-direct {v0}, Lcom/estrongs/a/b/q;-><init>()V

    sput-object v0, Lcom/estrongs/a/b/p;->b:Lcom/estrongs/a/b/p;

    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method
