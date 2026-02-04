.class public Lcom/estrongs/fs/impl/media/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/fs/impl/media/d;->a:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method public static a()Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/fs/impl/media/d;->a:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/media/d;->a:Landroid/media/MediaMetadataRetriever;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/media/d;->a:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method
