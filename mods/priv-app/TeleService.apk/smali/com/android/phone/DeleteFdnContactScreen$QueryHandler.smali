.class Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    # invokes: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    # invokes: Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/net/Uri;

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    return-void
.end method
