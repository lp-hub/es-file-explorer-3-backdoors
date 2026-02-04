.class public Lcom/estrongs/fs/l;
.super Ljava/lang/Object;


# static fields
.field public static A:Lcom/estrongs/fs/l;

.field public static B:Lcom/estrongs/fs/l;

.field public static C:Lcom/estrongs/fs/l;

.field public static D:Lcom/estrongs/fs/l;

.field public static E:Lcom/estrongs/fs/l;

.field public static F:Lcom/estrongs/fs/l;

.field public static G:Lcom/estrongs/fs/l;

.field public static H:Lcom/estrongs/fs/l;

.field public static I:Lcom/estrongs/fs/l;

.field public static J:Lcom/estrongs/fs/l;

.field public static K:Lcom/estrongs/fs/l;

.field public static L:Lcom/estrongs/fs/l;

.field public static M:Lcom/estrongs/fs/l;

.field public static N:Lcom/estrongs/fs/l;

.field public static O:Lcom/estrongs/fs/l;

.field public static P:Lcom/estrongs/fs/l;

.field public static a:Lcom/estrongs/fs/l;

.field public static b:Lcom/estrongs/fs/l;

.field public static c:Lcom/estrongs/fs/l;

.field public static d:Lcom/estrongs/fs/l;

.field public static e:Lcom/estrongs/fs/l;

.field public static f:Lcom/estrongs/fs/l;

.field public static g:Lcom/estrongs/fs/l;

.field public static h:Lcom/estrongs/fs/l;

.field public static i:Lcom/estrongs/fs/l;

.field public static j:Lcom/estrongs/fs/l;

.field public static k:Lcom/estrongs/fs/l;

.field public static l:Lcom/estrongs/fs/l;

.field public static m:Lcom/estrongs/fs/l;

.field public static n:Lcom/estrongs/fs/l;

.field public static o:Lcom/estrongs/fs/l;

.field public static p:Lcom/estrongs/fs/l;

.field public static q:Lcom/estrongs/fs/l;

.field public static r:Lcom/estrongs/fs/l;

.field public static s:Lcom/estrongs/fs/l;

.field public static t:Lcom/estrongs/fs/l;

.field public static u:Lcom/estrongs/fs/l;

.field public static v:Lcom/estrongs/fs/l;

.field public static w:Lcom/estrongs/fs/l;

.field public static x:Lcom/estrongs/fs/l;

.field public static y:Lcom/estrongs/fs/l;

.field public static z:Lcom/estrongs/fs/l;


# instance fields
.field private final Q:Ljava/lang/String;

.field private R:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "file"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->b:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "smb_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->c:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "ftp_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->d:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "sftp_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->e:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "ftps_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->f:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "webdav_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->g:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "webdavs_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->h:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_bonded_pc"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->i:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_pc"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->j:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_bonded_phone"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->k:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_phone"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->l:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_bonded_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->m:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "bt_server_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->n:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "folder_shared"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->o:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->p:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_pcs"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->q:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_sugarsync"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->r:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_dropbox"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->s:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_boxnet"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->t:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_kanbox"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->u:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_kuaipan"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->v:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_vdisk"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->w:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_skydrv"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->x:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_gdrive"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->y:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_s3"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->z:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_ubuntu"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->A:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_megacloud"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->B:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_server_yandex"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->C:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->D:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "pcs_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->E:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_folder_photo"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->F:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "netdisk_folder_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->G:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "sp_server_flickr"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->H:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "sp_server_instagram"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->I:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "sp_server_facebook"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->J:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "sp_server_pcs"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->K:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "create_site"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->L:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->M:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "pcs_formal_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "pcs_provisional_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->O:Lcom/estrongs/fs/l;

    new-instance v0, Lcom/estrongs/fs/l;

    const-string v1, "pcs_provisional_active_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/l;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/l;->P:Lcom/estrongs/fs/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/estrongs/fs/l;->R:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/fs/l;
    .locals 1

    const-string v0, "pcs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/l;->q:Lcom/estrongs/fs/l;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sugarsync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/l;->r:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_1
    const-string v0, "dropbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/l;->s:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_2
    const-string v0, "box"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/fs/l;->t:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_3
    const-string v0, "kanbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/fs/l;->u:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_4
    const-string v0, "kuaipan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/fs/l;->v:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_5
    const-string v0, "vdisk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/fs/l;->w:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_6
    const-string v0, "skydrive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/estrongs/fs/l;->x:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_7
    const-string v0, "gdrive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/estrongs/fs/l;->y:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_8
    const-string v0, "s3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/fs/l;->z:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_9
    const-string v0, "ubuntu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/estrongs/fs/l;->A:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_a
    const-string v0, "yandex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/estrongs/fs/l;->C:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_b
    const-string v0, "megacloud"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/estrongs/fs/l;->B:Lcom/estrongs/fs/l;

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/fs/l;
    .locals 1

    const-string v0, "Flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/l;->H:Lcom/estrongs/fs/l;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Instagram"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/l;->I:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_1
    const-string v0, "Facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/l;->J:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/fs/l;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/estrongs/fs/l;->M:Lcom/estrongs/fs/l;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/estrongs/fs/l;->E:Lcom/estrongs/fs/l;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/fs/l;->D:Lcom/estrongs/fs/l;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/l;->R:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/l;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/fs/l;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/fs/l;

    iget-object v1, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/l;->Q:Ljava/lang/String;

    return-object v0
.end method
