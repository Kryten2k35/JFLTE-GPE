.class public Landroid/provider/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchSuggestions"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final QUERIES_PROJECTION_QUERY_INDEX:I = 0x2

.field private static final sWritesInProgress:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSuggestionsUri:Landroid/net/Uri;

.field private final mTwoLineDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "query"

    aput-object v1, v0, v4

    const-string v1, "display1"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "query"

    aput-object v1, v0, v4

    const-string v1, "display1"

    aput-object v1, v0, v5

    const-string v1, "display2"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/provider/SearchRecentSuggestions;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "display1"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-eqz v5, :cond_0

    const-string v5, "display2"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v5, "query"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v5, 0xfa

    invoke-virtual {p0, v0, v5}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    return-void

    :catch_0
    move-exception v1

    const-string v5, "SearchSuggestions"

    const-string v6, "saveRecentQuery"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Landroid/provider/SearchRecentSuggestions$1;

    const-string v1, "saveRecentQuery"

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/provider/SearchRecentSuggestions$1;-><init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions$1;->start()V

    goto :goto_0
.end method

.method protected truncateHistory(Landroid/content/ContentResolver;I)V
    .locals 4
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # I

    if-gez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    if-lez p2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN (SELECT _id FROM suggestions ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SearchSuggestions"

    const-string v3, "truncateHistory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method waitForSave()V
    .locals 1

    :cond_0
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method
