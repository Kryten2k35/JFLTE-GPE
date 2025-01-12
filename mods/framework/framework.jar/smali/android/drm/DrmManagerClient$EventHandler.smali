.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1    # Landroid/os/Message;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    const-string v6, "DrmManagerClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/drm/DrmInfo;

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v7

    # invokes: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v6, v7, v1}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v5

    const-string v6, "drm_info_status_object"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "drm_info_object"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    iget v7, v5, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v6, v7, :cond_2

    new-instance v3, Landroid/drm/DrmEvent;

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v8, v5, Landroid/drm/DrmInfoStatus;->infoType:I

    # invokes: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static {v7, v8}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v7

    invoke-direct {v3, v6, v7, v9, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    :goto_1
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v6, v7, v3}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    :cond_1
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v6, v7, v2}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    iget v4, v5, Landroid/drm/DrmInfoStatus;->infoType:I

    :goto_2
    new-instance v2, Landroid/drm/DrmErrorEvent;

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # invokes: Landroid/drm/DrmManagerClient;->getErrorType(I)I
    invoke-static {v7, v4}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;I)I

    move-result v7

    invoke-direct {v2, v6, v7, v9, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v4

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v7, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v7

    # invokes: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static {v6, v7}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v6

    if-nez v6, :cond_4

    new-instance v3, Landroid/drm/DrmEvent;

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v6

    const/16 v7, 0x3e9

    invoke-direct {v3, v6, v7, v9}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/drm/DrmErrorEvent;

    iget-object v6, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v6}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v6

    const/16 v7, 0x7d7

    invoke-direct {v2, v6, v7, v9}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
