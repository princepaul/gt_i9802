.class Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 905
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/notification/NotificationManagerService;->FILTER_MSG_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2300()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 907
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 910
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    # invokes: Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->addToCache(Landroid/database/Cursor;)V
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->access$2400(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/database/Cursor;)V

    .line 912
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    :cond_0
    monitor-exit v1

    .line 919
    :cond_1
    return-void

    .line 915
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
