.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 1776
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1784
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1785
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v1, "sm0001"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$2202(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1786
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$14;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$5400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1787
    return-void
.end method
